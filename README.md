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

__*Note - For products that are installed with the z/OS Package Manager, each Operator version is compatible with all corresponding OCI artifacts unless stated otherwise.*__
___
While installing a product by using z/OS Package Manager, make sure that the name matches the OCI artifact name on the registry. Listed below are some examples of supported products and their OCI names that you can provide in the **z/OS Product OCI Artifact Name** field during the product installation.
| **Product Name** | **Product OCI Artifact Name** |
|-------------|-----------------|
|[C/C++ for Open Enterprise Languages on z/OS](#cpp)|oelcpp|
|[64-bit SDK for z/OS, Java Technology Edition](#java)|java|
|[Open Enterprise SDK for Go](#go)|golang|
|[Open Enterprise SDK for Node.js](#nodejs)|node|
|[Open Enterprise SDK for Python](#python)|python|
|[Z Open Automation Utilities](#zoau)|zoau|

## CICS Operator collection
To find out more, read the [release notes](https://www.ibm.com/docs/en/cloud-paks/z-modernization-stack/2023.2?topic=cctcto-release-notes). 
|Supported Operator version | License |
| - | - |
| [1.0.1](https://github.com/IBM/zos_cics_operator/releases/tag/v1.0.1) | [Read here](https://github.com/IBM/zos_cics_operator/blob/main/LICENSE.txt) |
| [1.0.0](https://github.com/IBM/zos_cics_operator/releases/tag/v1.0.0) | [Read here](https://github.com/IBM/zos_cics_operator/blob/main/LICENSE.txt) |

## IMS Operator collection
To find out more, read the [release notes](https://www.ibm.com/docs/en/cloud-paks/z-modernization-stack/2023.2?topic=operator-release-notes). 
|Supported Operator version | License |
| - | - |
| [1.2.0](https://github.com/IBM/zos_ims_operator/releases/tag/v1.2.0) | [Read here](https://github.com/IBM/zos_ims_operator/blob/release-v1.2.0/LICENSE) |
| [1.1.0](https://github.com/IBM/zos_ims_operator/releases/tag/v1.1.0) | [Read here](https://github.com/IBM/zos_ims_operator/blob/release-v1.1.0/LICENSE) |
| [1.0.0](https://github.com/IBM/zos_ims_operator/releases/tag/v1.0.0) | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-CAQZ-GR4N57) |


___
## z/OS Package Manager Operator collection <a name="zpm"></a>
To find out more, read the [release notes](https://www.ibm.com/docs/en/SSV97FN_2022.1.1/zpm/release-notes.html).<br>
**Note:** It is recommended to use the latest versions.
|  Operator Version | Supported CLI Version | License |
|-|-|-| 
| [2.1.0](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.1.0) | 2.0.0 | [Read here](https://ibm.biz/BdSjdK) |
| [2.0.1](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.0.1) | 1.1.1 | [Read here](https://www.ibm.com/support/customer/csol/terms/?id=L-YJCB-2HHW29) |
| [2.0.0](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.0.0) | 1.1.0 | [Read here](https://www.ibm.com/support/customer/csol/terms/?id=L-YJCB-2HHW29) |
| [1.0.5](https://github.com/IBM/zos_package_manager_operator/releases/tag/v1.0.5) | 1.0.2 | [Read here](https://www.ibm.com/support/customer/csol/terms/?id=L-ACRR-CERHLP&lc=en#detail-document) |
| [1.0.4](https://github.com/IBM/zos_package_manager_operator/releases/tag/v1.0.4) | 1.0.1 | [Read here](https://www.ibm.com/support/customer/csol/terms/?id=L-ACRR-CERHLP&lc=en#detail-document) | 
| [1.0.0](https://github.com/IBM/zos_package_manager_operator/releases/tag/v1.0.0) | 1.0.0 | [Read here](https://www.ibm.com/support/customer/csol/terms/?id=L-ACRR-CERHLP&lc=en#detail-document) |


## C/C++ for Open Enterprise Languages on z/OS <a name="cpp"></a>
The Product OCI Artifact name is `oelcpp`. To find out more, read the [release notes](https://www.ibm.com/docs/en/SSV97FN_2022.1.1/cpp_compiler/release_notes.html).
|  Product Version | OCI Artifact Version | License |
|-|-|-|
| 2.0.0 | 2.0.0.2 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-PMEX-526X6D) | [Release notes](https://www.ibm.com/docs/en/SSV97FN_2022.1.1/cpp_compiler/release_notes.html) |
| 2.0.0 | 2.0.0.1 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-PMEX-526X6D) | [Release notes](https://www.ibm.com/docs/en/SSV97FN_2022.1.1/cpp_compiler/release_notes.html) |

|  Supported Operator Versions |
|-| 
| [2.1.0](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.1.0) |
| [2.0.1](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.0.1) |
| [2.0.0](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.0.0) |
| [1.0.3](https://github.com/IBM/zos_opencpp_operator/releases/tag/v1.0.3) | 
| [1.0.2](https://github.com/IBM/zos_opencpp_operator/releases/tag/v1.0.2) | 
| [1.0.1](https://github.com/IBM/zos_opencpp_operator/releases/tag/v1.0.1) | 
| [1.0.0](https://github.com/IBM/zos_opencpp_operator/releases/tag/v1.0.0) |

## 64-bit SDK for z/OS, Java Technology Edition <a name="java"></a>
The Product OCI Artifact name is `java`. To find out more, read the [release notes](https://www.ibm.com/docs/en/SSV97FN_2022.1.1/java/com.ibm.java.80.doc/diag/preface/changes_80/changes.html).
|  Product Version | OCI Artifact Version | License  |
|-|-|-|
| 8.0.8.15 | 8.0.8.15 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-JPLW-AS3PVH) |
| 8.0.8.10 | 8.0.8.10 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-JPLW-AS3PVH) |
| 8.0.8.5 | 8.0.8.5 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-JPLW-AS3PVH) |
| 8.0.8.0 | 8.0.8.0 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-JPLW-AS3PVH) |
| 8.0.7.20 | 8.0.7.20 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-JPLW-AS3PVH) |
| 8.0.7.15 | 8.0.7.15 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-JPLW-AS3PVH) |
| 8.0.7.10 | 8.0.7.10 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-JPLW-AS3PVH) |
| 8.0.7.0 | 8.0.7.0 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-JPLW-AS3PVH) |

| Supported Operator Versions | 
|-|
| [2.1.0](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.1.0) |
| [2.0.1](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.0.1) |
| [2.0.0](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.0.0) |
| [1.0.3](https://github.com/IBM/zos_java_operator/releases/tag/v1.0.3) | 
| [1.0.2](https://github.com/IBM/zos_java_operator/releases/tag/v1.0.2) | 
| [1.0.1](https://github.com/IBM/zos_java_operator/releases/tag/v1.0.1) | 
| [1.0.0](https://github.com/IBM/zos_java_operator/releases/tag/v1.0.0) | 


## Open Enterprise SDK for Go <a name="go"></a>
The Product OCI Artifact name is `golang`. To find out more, read the [release notes](https://www.ibm.com/docs/en/SSV97FN_latest/golang/whats_new.html).
| Product Version | OCI Artifact Version | License  |
|-|-|-|
| 1.21.0 | 1.21.0.0 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-EXWD-SDP99N) |
| 1.20.4 | 1.20.0.1 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-EXWD-SDP99N) |

 Supported Operator Versions |
|-| 
| [2.1.0](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.1.0) |
| [2.0.1](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.0.1) |
| [2.0.0](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.0.0) |
| [1.0.3](https://github.com/IBM/zos_go_operator/releases/tag/v1.0.3) |
| [1.0.2](https://github.com/IBM/zos_go_operator/releases/tag/v1.0.2) | 
| [1.0.1](https://github.com/IBM/zos_go_operator/releases/tag/v1.0.1) | 
| [1.0.0](https://github.com/IBM/zos_go_operator/releases/tag/v1.0.0) | 


## Open Enterprise SDK for Node.js <a name="nodejs"></a>
The Product OCI Artifact name is `node`. To find out more, read the [release notes](https://www.ibm.com/docs/en/SSV97FN_2022.1.1/nodejs/release_notes.html).
| Product Version | OCI Artifact Version | License  | 
|-|-|-|
| 18.18.2 | 18.0.0.5 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-SDPU-Z5XJSB) |
| 18.16.0 | 18.0.0.3 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-SDPU-Z5XJSB) |
| 18.14.2 | 18.0.0.2 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-SDPU-Z5XJSB) |

| Supported Operator Versions | 
|-|
| [2.1.0](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.1.0) |
| [2.0.1](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.0.1) |
| [2.0.0](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.0.0) |
| [1.0.3](https://github.com/IBM/zos_nodejs_operator/releases/tag/v1.0.3) |
| [1.0.2](https://github.com/IBM/zos_nodejs_operator/releases/tag/v1.0.2) |
| [1.0.1](https://github.com/IBM/zos_nodejs_operator/releases/tag/v1.0.1) |
| [1.0.0](https://github.com/IBM/zos_nodejs_operator/releases/tag/v1.0.0) | 

## Open Enterprise SDK for Python <a name="python"></a>
The Product OCI Artifact name is `python`. To find out more, read the [release notes](https://www.ibm.com/docs/en/SSV97FN_2022.1.1/python/release_note.html).
|  Product Version | OCI Artifact Version | License |
|-|-|-|
| 3.11.0 | 3.11.0.5 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-CFMQ-2399K3) |
| 3.11.0 | 3.11.0.4 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-CFMQ-2399K3) |
| 3.11.0 | 3.11.0.1 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-CFMQ-2399K3) |

| Supported Operator Versions | 
|-| 
| [2.1.0](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.1.0) |
| [2.0.1](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.0.1) |
| [2.0.0](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.0.0) |
| [1.0.3](https://github.com/IBM/zos_python_operator/releases/tag/v1.0.3) | 
| [1.0.2](https://github.com/IBM/zos_python_operator/releases/tag/v1.0.2) | 
| [1.0.1](https://github.com/IBM/zos_python_operator/releases/tag/v1.0.1) | 
| [1.0.0](https://github.com/IBM/zos_python_operator/releases/tag/v1.0.0) | 


## Z Open Automation Utilities <a name="zoau"></a>
The Product OCI Artifact name is `zoau`. To find out more, read the [release notes](https://www.ibm.com/docs/en/cloud-paks/z-modernization-stack/latest?topic=utilities-release-notes).
|  Product Version | OCI Artifact Version | License |
|-|-|-|
| 1.2.5 | 1.2.5.0 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-CWDG-C2AUJQ) |
| 1.2.3 | 1.2.3.2 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-CWDG-C2AUJQ) |
| 1.2.2 | 1.2.2.1 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-CWDG-C2AUJQ) |
| 1.2.1 | 1.2.1.0 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-CWDG-C2AUJQ) |
| 1.2.0 | 1.2.0.2 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-CWDG-C2AUJQ) |
| 1.2.0 | 1.2.0.1 | [Read here](https://www14.software.ibm.com/cgi-bin/weblap/lap.pl?li_formnum=L-CWDG-C2AUJQ) |

| Supported Operator Versions | 
|-| 
| [2.1.0](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.1.0) |
| [2.0.1](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.0.1) |
| [2.0.0](https://github.com/IBM/zos_package_manager_operator/releases/tag/v2.0.0) |
| [1.0.3](https://github.com/IBM/zos_zoau_operator/releases/tag/v1.0.3) |
| [1.0.2](https://github.com/IBM/zos_zoau_operator/releases/tag/v1.0.2) |
| [1.0.1](https://github.com/IBM/zos_zoau_operator/releases/tag/v1.0.1) |
| [1.0.0](https://github.com/IBM/zos_zoau_operator/releases/tag/v1.0.0) |
