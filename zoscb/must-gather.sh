#!/usr/bin/env bash

############################################################################################################################################
#   Limited Materials - Property of IBM
#   5636-ZCB
#   (C) Copyright IBM Corp. 2022 All Rights Reserved
#   US Government Users Restricted Rights - Use, duplication or disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
############################################################################################################################################

# Exit the script immediately if any command fails
set -eo pipefail

PROJECT=$(oc project -q)
SCRIPT_NAME=$(basename "${0}")
SCRIPT_VERSION="v1.1"
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
ZOSCB_INST_NAME=$(oc get zoscloudbroker --output=jsonpath={.items..metadata.name})

# General log diretory
DIR_MUST_GATHER="${PWD}/zoscb-must-gather_${TIMESTAMP}"
# Pod logs
DIR_MUST_GATHER_LOGS="${DIR_MUST_GATHER}/logs"
# YAMLs output by oc get -o yaml
DIR_MUST_GATHER_YAMLS="${DIR_MUST_GATHER}/yamls"
# PVC dump
DIR_MUST_GATHER_PVC="${DIR_MUST_GATHER}/pvc"
# Audit
DIR_MUST_GATHER_AUDIT="${DIR_MUST_GATHER}/audit"


# logMessage: Logs a script info message.
function logMessage() {
    echo -e "\n\033[1;34m${1}\033[00m"
}

# logWarning: Logs a script warning message.
function logWarning() {
    echo -e "\n\033[1;33m${1}\033[00m"
}

# logError: Logs a script error message.
function logError() {
    echo -e "\n\033[1;31m${1}\033[00m"
}

# exitSuccess: Exit with a success message.
function exitSuccess() {
    logMessage "${1}" && exit
}

# exitWarning: Exit with a warning message.
function exitWarning() {
    logWarning "${1}" && exit
}

# exitError: Exit with an error message.
function exitError() {
    logError "${1}" && exit 1
}

# displayHelp: Displays script usage information.
function displayHelp() {
    logWarning "IBM z/OS Cloud Broker MustGather Script ${SCRIPT_VERSION}"

    logMessage "Collect all z/OS Cloud Broker MustGather data (includes all options except OCP audit logs)"
    echo "${SCRIPT_NAME}"

    logMessage "Collect OCP must-gather audit logs"
    echo "${SCRIPT_NAME} --audit-ocp"

    logMessage "Options"
    echo "   --api-resources          Gather all YAMLs from resources in API Group: *zoscb.ibm.com"
    echo "   --pvc                    Gather only PVC Data (including ansible logs)"
    echo "   --audit-ocp              Gather OCP audit log data from the etcd-apiserver"
    echo
    # echo "   -v | --verbose         Display verbose output"
    echo "   -h | --help              Display usage information"
    echo

    exit
}

function createArchive() {
  logMessage "Creating must-gather archive"
  local archive="zoscb-must-gather_${TIMESTAMP}.tgz"
  tar -czf "${archive}" -C "${DIR_MUST_GATHER}" .
  logWarning "Successfully collected must-gather data into archive: ${archive}"
}

# gatherPodLogs - Gathers Pod logs for all Pods and containers in project specified
function gatherPodLogs {
  logMessage "\tWriting pod logs into dir: ${DIR_MUST_GATHER_LOGS}"
  local project=$1

  yaml_dir="${DIR_MUST_GATHER_YAMLS}/pods"
  mkdir -pv "${yaml_dir}"
  
  # podlist=($(oc get pods | tail -n +2 | awk {'print $1'}))
  mapfile -t podlist < <(oc get -n "${project}" pods | tail -n +2 | awk {'print $1'})
  for pod in "${podlist[@]}"
  do
    printf "\t\tGathering logs for pod: %s\n" "${pod}"
    oc logs -n "${project}" "${pod}" --all-containers > "${DIR_MUST_GATHER_LOGS}/${pod}.log"
    oc get -n "${project}" pod "${pod}" -o yaml > "${yaml_dir}/${pod}.yaml"
  done
}

function gatherByResourceApiGroup() {
  logMessage "Gathering resource YAMLs for API Group: ${1}"
  local api_group=$1

  local gather_dir="${DIR_MUST_GATHER}/yamls/${api_group}"
  mkdir -pv "${gather_dir}"
  logMessage "\tWriting YAMLs into dir: ${gather_dir}"

  for resource in $(oc api-resources --verbs=list --namespaced -o name | grep "${api_group}")
  do
    printf "\t\tGathering YAMLs for resource: %s\n" "${resource}"
    oc get "${resource}" -o yaml > "${gather_dir}/${resource}.yaml"
  done
}

function gatherByResourceOrCategory() {
  local api_category=$1
  local filter=$2

  logMessage "Gathering resource YAMLs for CRDs in category '${1}' with filter '${2}'"

  local gather_dir="${DIR_MUST_GATHER}/yamls/${api_category}"
  mkdir -pv "${gather_dir}"
  logMessage "\tWriting YAMLs into dir: ${gather_dir}"

  if [[ -n "${filter}" ]]; then
    oc get "${api_category}" -l "${filter}" -o yaml > "${gather_dir}/${api_category}.yaml"
  else
    oc get "${api_category}" -o yaml > "${gather_dir}/${api_category}.yaml"
  fi
}

function gatherOLMLogs() {
  logMessage "Gathering Openshift Lifecycle Manager (OLM) logs"
  gatherPodLogs openshift-operator-lifecycle-manager
}

function gatherPVCDump() {
  logMessage "Gathering Persistent Data from PVC"
  oc rsync $(oc get pods | grep ibm-zoscb-manager | awk '{ print $1 }'):/opt/. "${DIR_MUST_GATHER_PVC}"
}

function gatherDefaults() {
  logMessage "Gathering default must-gather data (pod logs, resource yamls, PVC dump)"
  gatherPodLogs "${PROJECT}"

  # ZosCloudBroker, ZosEndpoint, SubOperatorConfig, OperatorCollection
  gatherByResourceOrCategory "zoscb"
  
  # CatalogSource, ClusterServiceVersion, Subscription, etc
  gatherByResourceOrCategory "olm"

  # Deployments, ReplicaSets, Services, Pods
  gatherByResourceOrCategory "all" "instance-name=${ZOSCB_INST_NAME}"

  # Secrets
  gatherByResourceOrCategory "secret" "instance-name=${ZOSCB_INST_NAME}"

  # Route
  gatherByResourceOrCategory "route" "instance-name=${ZOSCB_INST_NAME}"

  # Role, RoleBinding, etc
  gatherByResourceApiGroup "authorization.openshift.io"
  
  # NetworkPolicy, Ingress
  gatherByResourceApiGroup "networking.k8s.io"

  gatherOLMLogs
  gatherPVCDump
}

########################################################################
#
#  Main Logic loop
#
########################################################################

# Parse command line arguments
while [[ ${#} -gt 0 ]]; do
    argument="${1}"

    case ${argument} in
        --api-resources)
            GATHER_API_RESOURCES="true"
            ;;
        --pvc)
            GATHER_PVC_DUMP="true"
            ;;
        --audit-ocp)
            GATHER_OCP_AUDIT="true"
            ;;
        -v | --verbose)
            set -x
            ;;
        -h | --help)
            displayHelp
            ;;
        *)
            logError "Invalid argument: '${argument}'"
            ;;
    esac

    shift
done

#TODO - Should probably move this into some better conditional logic - not all directories should be created
logWarning "Beginning z/OS Cloud Broker MustGather Data collection!"
logWarning "Project/Namespace Name: ${PROJECT}"
logWarning "ZosCloudBroker Instance Name: ${ZOSCB_INST_NAME}"
echo "\n\n"
logMessage "Writing data to ${DIR_MUST_GATHER}"

# If no flags are passed then execute all configuration steps in sequence
if [[ -z "${GATHER_API_RESOURCES}" ]] && [[ -z "${GATHER_PVC_DUMP}" ]] && [[ -z "${GATHER_OCP_AUDIT}" ]]; then
  mkdir -pv "${DIR_MUST_GATHER_LOGS}"
  mkdir -pv "${DIR_MUST_GATHER_YAMLS}"
  mkdir -pv "${DIR_MUST_GATHER_PVC}"

  gatherDefaults
fi

if [[ -n "${GATHER_API_RESOURCES}" ]]; then
  mkdir -pv "${DIR_MUST_GATHER_YAMLS}"
  gatherByResourceApiGroup "zoscb.ibm.com"
fi

if [[ -n "${GATHER_PVC_DUMP}" ]]; then
  mkdir -pv "${DIR_MUST_GATHER_PVC}"
  gatherPVCDump
fi

if [[ -n "${GATHER_OCP_AUDIT}" ]]; then
  logMessage "Gathering OCP must-gather audit logs"
  mkdir -pv "${DIR_MUST_GATHER_AUDIT}"

  oc adm must-gather -- /usr/bin/gather_audit_logs
fi

createArchive