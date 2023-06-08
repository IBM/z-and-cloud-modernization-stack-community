# IBM Z & Cloud Modernization Stack - Community
This community repo holds public content relevant to the IBM Z and Cloud Modernization Stack.

Please reference the product-specific directories for content related to a given product.

- [IBM z/OS Cloud Broker](zoscb/README.md)  
---
**Note:** If you are using the URL or manual method for importing an operator collection in z/OS Cloud Broker and need to find and download the associated public key and signature file for that collection to use for collection validation during import, complete the following steps:
1. Under the appropriate product heading under **Available Product Versions**, select the supported operator version that you need to download a public key and signature file for.
1. Under **Assets**, click the file ending in `.pub` to download the public key and the file ending in `.sig` to download the signature file.
---
## Available Operators and Product Versions

__*Note - For products that are installed with the z/OS Package Manager, each Operator version is compatible with all corresponding OCI artifacts unless stated otherwise.__
___
## IBM IMS Operator collection
To find out more, read the [release notes](https://www.ibm.com/docs/en/cloud-paks/z-modernization-stack/2023.1?topic=operator-release-notes).  
|Supported Operator version | License |
| - | - |
| [1.0.0](https://github.com/IBM/zos_ims_operator/releases/tag/v1.0.0) | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-CAQZ-GR4N57) |

___
## z/OS Package Manager <a name="zpm"></a>
To find out more, read the [release notes](https://www.ibm.com/docs/en/SSV97FN_2022.1.1/zpm/release-notes.html).
|  Product Version | Supported Operator version | License |
|-|-|-| 
| 1.1.1 | [2.0.1](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.0.0) | [Read here](https://www.ibm.com/support/customer/csol/terms/?id=L-YJCB-2HHW29) |
| 1.1.0 | [2.0.0](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.0.0) | [Read here](https://www.ibm.com/support/customer/csol/terms/?id=L-YJCB-2HHW29) |
| 1.0.2 | [1.0.5](https://github.com/IBM/zos_package_manager_operator/releases/tag/v1.0.5) | [Read here](https://www.ibm.com/support/customer/csol/terms/?id=L-ACRR-CERHLP&lc=en#detail-document) |
| 1.0.1 | [1.0.4](https://github.com/IBM/zos_package_manager_operator/releases/tag/v1.0.4) | [Read here](https://www.ibm.com/support/customer/csol/terms/?id=L-ACRR-CERHLP&lc=en#detail-document) | 
| 1.0.0 | [1.0.0](https://github.com/IBM/zos_package_manager_operator/releases/tag/v1.0.0) | [Read here](https://www.ibm.com/support/customer/csol/terms/?id=L-ACRR-CERHLP&lc=en#detail-document) |


## C/C++ for Open Enterprise Languages on z/OS <a name="cpp"></a>
To find out more, read the [release notes](https://www.ibm.com/docs/en/SSV97FN_2022.1.1/cpp_compiler/release_notes.html).
|  Product Version | OCI artifact | License |
|-|-|-|
| 2.0.0 | 2.0.0.1 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-PMEX-526X6D) | [Release notes](https://www.ibm.com/docs/en/SSV97FN_2022.1.1/cpp_compiler/release_notes.html) |

|  Supported Operator versions |
|-| 
| [2.0.0](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.0.0) |
| [1.0.3](https://github.com/IBM/zos_opencpp_operator/releases/tag/v1.0.3) | 
| [1.0.2](https://github.com/IBM/zos_opencpp_operator/releases/tag/v1.0.2) | 
| [1.0.1](https://github.com/IBM/zos_opencpp_operator/releases/tag/v1.0.1) | 
| [1.0.0](https://github.com/IBM/zos_opencpp_operator/releases/tag/v1.0.0) |

## 64-bit SDK for z/OS, Java Technology Edition <a name="java"></a>
To find out more, read the [release notes](https://www.ibm.com/docs/en/SSV97FN_2022.1.1/java/com.ibm.java.80.doc/diag/preface/changes_80/changes.html).
|  Product Version | OCI artifact | License  |
|-|-|-|
| 8.0.8 | 8.0.8.5 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-JPLW-AS3PVH) |
| 8.0.8 | 8.0.8.0 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-JPLW-AS3PVH) |
| 8.0.7 | 8.0.7.20 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-JPLW-AS3PVH) |
| 8.0.7 | 8.0.7.15 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-JPLW-AS3PVH) |
| 8.0.7 | 8.0.7.10 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-JPLW-AS3PVH) |
| 8.0.7 | 8.0.7.0 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-JPLW-AS3PVH) |

| Supported Operator versions | 
|-|
| [2.0.0](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.0.0) |
| [1.0.3](https://github.com/IBM/zos_java_operator/releases/tag/v1.0.3) | 
| [1.0.2](https://github.com/IBM/zos_java_operator/releases/tag/v1.0.2) | 
| [1.0.1](https://github.com/IBM/zos_java_operator/releases/tag/v1.0.1) | 
| [1.0.0](https://github.com/IBM/zos_java_operator/releases/tag/v1.0.0) | 


## Open Enterprise SDK for Go <a name="go"></a>
To find out more, read the [release notes](https://www.ibm.com/docs/en/SSV97FN_latest/golang/whats_new.html).
| Product Version | OCI artifact | License  |
|-|-|-|
| 1.20.4 | 1.20.0.1 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-EXWD-SDP99N) |

 Supported Operator versions |
|-| 
| [2.0.0](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.0.0) |
| [1.0.3](https://github.com/IBM/zos_go_operator/releases/tag/v1.0.3) |
| [1.0.2](https://github.com/IBM/zos_go_operator/releases/tag/v1.0.2) | 
| [1.0.1](https://github.com/IBM/zos_go_operator/releases/tag/v1.0.1) | 
| [1.0.0](https://github.com/IBM/zos_go_operator/releases/tag/v1.0.0) | 


## Open Enterprise SDK for Node.js <a name="nodejs"></a>
To find out more, read the [release notes](https://www.ibm.com/docs/en/SSV97FN_2022.1.1/nodejs/release_notes.html).
| Product Version | OCI artifact | License  | 
|-|-|-|
| 18.14.2 | 18.0.0.2 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-SDPU-Z5XJSB) |

| Supported Operator versions | 
|-|
| [2.0.0](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.0.0) |
| [1.0.3](https://github.com/IBM/zos_nodejs_operator/releases/tag/v1.0.3) |
| [1.0.2](https://github.com/IBM/zos_nodejs_operator/releases/tag/v1.0.2) |
| [1.0.1](https://github.com/IBM/zos_nodejs_operator/releases/tag/v1.0.1) |
| [1.0.0](https://github.com/IBM/zos_nodejs_operator/releases/tag/v1.0.0) | 

## Open Enterprise SDK for Python <a name="python"></a>
To find out more, read the [release notes](https://www.ibm.com/docs/en/SSV97FN_2022.1.1/python/release_note.html).
|  Product Version | OCI artifact | License |
|-|-|-|
| 3.11.0 | 3.11.0.1 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-CFMQ-2399K3) |
| 3.10.0 | 3.10.0.5 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-JYIP-C7JT5W) |
| 3.10.0 | 3.10.0.2 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-JYIP-C7JT5W) |
| 3.10.0 | 3.10.0.1 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-JYIP-C7JT5W) |

| Supported Operator versions | 
|-| 
| [2.0.0](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.0.0) |
| [1.0.3](https://github.com/IBM/zos_python_operator/releases/tag/v1.0.3) | 
| [1.0.2](https://github.com/IBM/zos_python_operator/releases/tag/v1.0.2) | 
| [1.0.1](https://github.com/IBM/zos_python_operator/releases/tag/v1.0.1) | 
| [1.0.0](https://github.com/IBM/zos_python_operator/releases/tag/v1.0.0) | 


## Z Open Automation Utilities <a name="zoau"></a>
To find out more, read the [release notes](https://www.ibm.com/docs/en/SSV97FN_2022.1.1/zoau/zstack_release_notes_zoau.html).
|  Product Version | OCI artifact | License |
|-|-|-|
| 1.2.3.2 | 1.2.3.2 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-CWDG-C2AUJQ) |
| 1.2.2.1 | 1.2.2.1 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-CWDG-C2AUJQ) |
| 1.2.1 | 1.2.1.0 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-CWDG-C2AUJQ) |
| 1.2.0 | 1.2.0.2 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-CWDG-C2AUJQ) |
| 1.2.0 | 1.2.0.1 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-CWDG-C2AUJQ) |

| Supported Operator versions | 
|-| 
| [2.0.0](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.0.0) |
| [1.0.3](https://github.com/IBM/zos_zoau_operator/releases/tag/v1.0.3) |
| [1.0.2](https://github.com/IBM/zos_zoau_operator/releases/tag/v1.0.2) |
| [1.0.1](https://github.com/IBM/zos_zoau_operator/releases/tag/v1.0.1) |
| [1.0.0](https://github.com/IBM/zos_zoau_operator/releases/tag/v1.0.0) |
