# IBM z/OS Cloud Broker
The documentation, scripts, or content provided under this directory are intended to be used with IBM z/OS Cloud Broker v2.1.0. 

- [IBM z/OS Cloud Broker](#ibm-zos-cloud-broker)
  - [Must Gather](#must-gather)
    - [Must Gather Help](#must-gather-help)
    - [Must Gather Output](#must-gather-output)

## Must Gather
The `must-gather.sh` script provides a helpful utility function for generating an archive that can be supplied to the
IBM z/OS Cloud Broker team to help identify and debug issues that may be experienced while using the product.

To run the `must-gather.sh` shell script:

1. Login to an OCP cluster, click your profile (top right), then click the **Copy login command** option
1. Copy and paste the supplied credentials into a user terminal
    ```
    oc login --token=<supplied-token> --server=<cluster-api-subdomain-and-port>
    ```
1. Ensure your `oc` CLI client is in the namespace containing your `ZosCloudBroker` instance
    ```
    oc project <your-zoscb-namespace>
    ```
1. Download the [`must-gather.sh`](https://raw.githubusercontent.com/IBM/z-and-cloud-modernization-stack-community/main/zoscb/must-gather.sh) script
1. Run the `must-gather.sh` script, use `--help` to see available options
    ```
    cd <your-download-dir>
    ./must-gather.sh
    ```
1. Collect the created `zoscb-must-gather_<timestamp>.tgz` file and supply to the IBM z/OS Cloud Broker team

### Must Gather Help
```
Collect all z/OS Cloud Broker MustGather data (includes all options except OCP audit logs)
must-gather.sh

Collect OCP must-gather audit logs
must-gather.sh --audit-ocp

Options
   --api-resources          Gather all YAMLs from resources in API Group: *zoscb.ibm.com
   --pvc                    Gather only PVC Data (including ansible logs)
   --audit-ocp              Gather OCP audit log data from the etcd-apiserver

   -h | --help              Display usage information
```

### Must Gather Output
```
./must-gather.sh 

Gathering z/OS Cloud Broker MustGather Data in OCP project: <current-project>

Gathering default must-gather data (pod logs, resource yamls, PVC dump)

        Writing pod logs into dir: <current-dir>/zoscb-must-gather_2022-03-11_14-56-30/logs
                Gathering logs for pod: ibm-zoscb-manager-zoscloudbroker-dd2-7795fc6694-v2tcc
                Gathering logs for pod: ibm-zoscb-operator-67544d54cb-w4wj4
                Gathering logs for pod: ibm-zoscb-registry-zoscloudbroker-dab2-665d5ddb99-bxzdj
                Gathering logs for pod: ibm-zoscb-registry-zoscloudbroker-dd2-86847789f8-kwqlf
                Gathering logs for pod: ibm-zoscb-ui-zoscloudbroker-dd2-6946bf9764-cqjkz
                Gathering logs for pod: zpm-zos-go-operator-54ff876df9-l75sv
                Gathering logs for pod: zpm-zos-java-operator-7d6fff6f84-4fz4g
                Gathering logs for pod: zpm-zos-package-manager-operator-6fc8f8dd57-qd8jg
                Gathering logs for pod: zpm-zos-python-operator-745f5c5bdb-hzl5n

Gathering resource YAMLs for API Group: zoscb.ibm.com

        Writing YAMLs into dir: <current-dir>/zoscb-must-gather_2022-03-11_14-56-30/yamls/zoscb.ibm.com
                Gathering YAMLs for resource: goinstances.zos-go.zpm.zoscb.ibm.com
                Gathering YAMLs for resource: validategos.zos-go.zpm.zoscb.ibm.com
                Gathering YAMLs for resource: golanginstances.zos-golang.zpm.zoscb.ibm.com
                Gathering YAMLs for resource: validategolangs.zos-golang.zpm.zoscb.ibm.com
                Gathering YAMLs for resource: javainstances.zos-java.zpm.zoscb.ibm.com
                Gathering YAMLs for resource: validatejavas.zos-java.zpm.zoscb.ibm.com
                Gathering YAMLs for resource: nodeinstances.zos-nodejs.zpm.zoscb.ibm.com
                Gathering YAMLs for resource: nodejsinstances.zos-nodejs.zpm.zoscb.ibm.com
                Gathering YAMLs for resource: validatenodejss.zos-nodejs.zpm.zoscb.ibm.com
                Gathering YAMLs for resource: validatenodes.zos-nodejs.zpm.zoscb.ibm.com
                Gathering YAMLs for resource: opencppinstances.zos-opencpp.zpm.zoscb.ibm.com
                Gathering YAMLs for resource: validateopencpps.zos-opencpp.zpm.zoscb.ibm.com
                Gathering YAMLs for resource: zospackagemanagerdiagnosticss.zos-package-manager.zpm.zoscb.ibm.com
                Gathering YAMLs for resource: zospackagemanagers.zos-package-manager.zpm.zoscb.ibm.com
                Gathering YAMLs for resource: pythoninstances.zos-python.zpm.zoscb.ibm.com
                Gathering YAMLs for resource: validatepythons.zos-python.zpm.zoscb.ibm.com
                Gathering YAMLs for resource: validatezoaus.zos-zoau.zpm.zoscb.ibm.com
                Gathering YAMLs for resource: zoauinstances.zos-zoau.zpm.zoscb.ibm.com
                Gathering YAMLs for resource: operatorcollections.zoscb.ibm.com
                Gathering YAMLs for resource: suboperatorconfigs.zoscb.ibm.com
                Gathering YAMLs for resource: zoscloudbrokers.zoscb.ibm.com
                Gathering YAMLs for resource: zosendpoints.zoscb.ibm.com

Gathering resource YAMLs for API Group: operators.coreos.com

        Writing YAMLs into dir: <current-dir>/zoscb-must-gather_2022-03-11_14-56-30/yamls/operators.coreos.com
                Gathering YAMLs for resource: catalogsources.operators.coreos.com
                Gathering YAMLs for resource: clusterserviceversions.operators.coreos.com
                Gathering YAMLs for resource: installplans.operators.coreos.com
                Gathering YAMLs for resource: operatorconditions.operators.coreos.com
                Gathering YAMLs for resource: operatorgroups.operators.coreos.com
                Gathering YAMLs for resource: subscriptions.operators.coreos.com
                Gathering YAMLs for resource: packagemanifests.packages.operators.coreos.com

Gathering resource YAMLs for API Group: apps

        Writing YAMLs into dir: <current-dir>/zoscb-must-gather_2022-03-11_14-56-30/yamls/apps
                Gathering YAMLs for resource: controllerrevisions.apps
                Gathering YAMLs for resource: daemonsets.apps
                Gathering YAMLs for resource: deployments.apps
                Gathering YAMLs for resource: replicasets.apps
                Gathering YAMLs for resource: statefulsets.apps
                Gathering YAMLs for resource: deploymentconfigs.apps.openshift.io

Gathering resource YAMLs for API Group: authorization.openshift.io

        Writing YAMLs into dir: <current-dir>/zoscb-must-gather_2022-03-11_14-56-30/yamls/authorization.openshift.io
                Gathering YAMLs for resource: rolebindingrestrictions.authorization.openshift.io
                Gathering YAMLs for resource: rolebindings.authorization.openshift.io
                Gathering YAMLs for resource: roles.authorization.openshift.io

Gathering resource YAMLs for API Group: networking.k8s.io

        Writing YAMLs into dir: <current-dir>/zoscb-must-gather_2022-03-11_14-56-30/yamls/networking.k8s.io
                Gathering YAMLs for resource: ingresses.networking.k8s.io
                Gathering YAMLs for resource: networkpolicies.networking.k8s.io

Gathering Openshift Lifecycle Manager (OLM) logs

        Writing pod logs into dir: <current-dir>/zoscb-must-gather_2022-03-11_14-56-30/logs
                Gathering logs for pod: catalog-operator-6c58485d98-t6b4r
                Gathering logs for pod: collect-profiles-27450450--1-z6dgf
                Gathering logs for pod: collect-profiles-27450465--1-8g9tb
                Gathering logs for pod: collect-profiles-27450480--1-87xcd
                Gathering logs for pod: olm-operator-56cdc88697-5vzdr
                Gathering logs for pod: package-server-manager-94c94966-dckvr
                Gathering logs for pod: packageserver-7446db45d4-84cdf
                Gathering logs for pod: packageserver-7446db45d4-tmgts

Gathering Persistent Data from PVC

sent 4634 bytes  received 132477710 bytes  9813506.96 bytes/sec
total size is 132428457  speedup is 1.00

Creating must-gather archive

Successfully collected must-gather data into archive: zoscb-must-gather_2022-03-11_14-56-30.tgz
```