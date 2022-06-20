# IBM z/OS Cloud Broker Must Gather Script

### Release v1.1
- 75% faster script gather time (approx 2-3 mins)
- Support for filtered Secret gathering (requires z/OS Cloud Broker v1.1 instance)
- Support for CRD category gathering
  - `oc get zoscb`
  - `oc get all -l instance-name=<ZosCloudBroker-CR-Name>`
  - `oc get olm`

### Release v1.0
- Initial release
- Support for API resource gathering
- Support for PVC data dumps