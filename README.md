# Targeted Pandemic Containment Through Identifying Local Contact Network Bottlenecks

This repository contains
* Extensive simulation results for network epidemic containment through contact edge weight reduction, including
  * comparison with **eigenvector centrality**
  * simulation results for **R_0 = 1.5, 2.5, 3.5, 4.5**
  * simulation results for delayed intervention, i.e., interventions are applied **in the middle of the pandemic**  
* Code and notebooks that reproduce all figures

This page is organized as follows:
1. [Overview of methods and notations](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#part-1-overview-of-methods-and-notations-back-to-top)
1. [Simulated epidemic curves at 25% intervention level](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#part-2-simulated-epidemic-curves-at-25-intervention-level-back-to-top)
    1. [Facebook County dataset](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#21---facebook-county-dataset) (13 figures)
        1. [Reviewer #2: Epidemic spread starts from Chicago](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#211---epidemic-spread-starts-from-chicago)
    1. [Wi-Fi Montreal dataset](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#22---wi-fi-montreal-dataset) (8 figures)
    1. [Portland Sub. dataset](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#23---portland-sub-dataset) (6 figures)
    1. [Portland dataset](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#24---portland-dataset) (6 figures)
1. [Predicted epidemic peaks and total outbreak sizes at various intervention levels](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#part-3-predicted-epidemic-peaks-and-total-outbreak-sizes-at-various-intervention-levels-back-to-top)
    1. [Facebook County dataset](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#31---facebook-county-dataset) (20 figures)
        1. [Reviewer #2: Epidemic spread starts from Chicago](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#311---epidemic-spread-starts-from-chicago)
    1. [Wi-Fi Montreal dataset](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#32---wi-fi-montreal-dataset) (16 figures)
    1. [Portland Sub. dataset](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#33---portland-sub-dataset) (16 figures)
    1. [Portland dataset](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#34---portland-dataset) (16 figures)

For viewing compatibility across different platforms, we have kept figure listings in a single column. Click [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks) to return to the top of this page.

## Part 1. Overview of methods and notations [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)

Throughout our experiments, an X% intervention means that we identify X% of all edges and reduce 90% edge weight from each of these edges. For an X% intervention, we compare the following methods for selecting edges:
* __NI__: No Intervention - No edges are identified for intervention
* __UI__: Uniform Intervention - Reduce edge weights by X%*90% on **all edges**
* __HD__: High Degree - Identify X% edges that are incident to nodes having the highest degrees
* __EG__: Eigenvector centrality - Identify X% edges that are incident to nodes having the highest eigenvector centralities
* __SP__: Shortest-Path betweenness - Identify top X% edges according to the shortest-path betweenness
* __CF__: Current-Flow betweenness - Identify top X% edges according to the current-flow betweenness
* __LF__(lambda): Local-Flow betweenness - Identify top X% edges according to the lambda-local-flow betweenness

## Part 2. Simulated epidemic curves at 25% intervention level [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)

### 2.1. - Facebook County dataset

* Facebook County. __R_0 = 2.5__. Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/facebook_curves_randinit_R025.png" alt="drawing" width="400"/>

* Facebook County. __R_0 = 2.5__. Interventions start on day 15. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/facebook_curves_randinit_R025_delay15.png" alt="drawing" width="400"/>

* Facebook County. __R_0 = 2.5__. Interventions start on day 30. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/facebook_curves_randinit_R025_delay30.png" alt="drawing" width="400"/>

* Facebook County. __R_0 = 2.5__. Interventions start on day 45. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/facebook_curves_randinit_R025_delay45.png" alt="drawing" width="400"/>

* Facebook County. __R_0 = 2.5__. Interventions start on day 60. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/facebook_curves_randinit_R025_delay60.png" alt="drawing" width="400"/>

* Facebook County. __R_0 = 1.5__. Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/facebook_curves_randinit_R015.png" alt="drawing" width="400"/>

* Facebook County. __R_0 = 1.5__. Interventions start on day 60. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/facebook_curves_randinit_R015_delay60.png" alt="drawing" width="400"/>

* Facebook County. __R_0 = 3.5__. Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/facebook_curves_randinit_R035.png" alt="drawing" width="400"/>

* Facebook County. __R_0 = 3.5__. Interventions start on day 30. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/facebook_curves_randinit_R035_delay30.png" alt="drawing" width="400"/>

* Facebook County. __R_0 = 4.5__. Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/facebook_curves_randinit_R045.png" alt="drawing" width="400"/>

* Facebook County. __R_0 = 4.5__. Interventions start on day 15. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/facebook_curves_randinit_R045_delay15.png" alt="drawing" width="400"/>

#### 2.1.1 - Epidemic spread starts from Chicago

* Facebook County, epidemic spread starts from Chicago. __R_0 = 2.5__. Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/facebook_curves_chicago_R025.png" alt="drawing" width="400"/>

* Facebook County, epidemic spread starts from Chicago. __R_0 = 2.5__. Interventions start on day 45. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/facebook_curves_chicago_R025_delay45.png" alt="drawing" width="400"/>

### 2.2 - Wi-Fi Montreal dataset

* Wi-Fi Montreal. __R_0 = 2.5__. Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/montreal_curves_randinit_R025.png" alt="drawing" width="400"/>

* Wi-Fi Montreal. __R_0 = 2.5__. Interventions start on day 5. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/montreal_curves_randinit_R025_delay5.png" alt="drawing" width="400"/>

* Wi-Fi Montreal. __R_0 = 1.5__. Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/montreal_curves_randinit_R015.png" alt="drawing" width="400"/>

* Wi-Fi Montreal. __R_0 = 1.5__. Interventions start on day 5. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/montreal_curves_randinit_R015_delay5.png" alt="drawing" width="400"/>

* Wi-Fi Montreal. __R_0 = 3.5__. Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/montreal_curves_randinit_R035.png" alt="drawing" width="400"/>

* Wi-Fi Montreal. __R_0 = 3.5__. Interventions start on day 5. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/montreal_curves_randinit_R035_delay5.png" alt="drawing" width="400"/>

* Wi-Fi Montreal. __R_0 = 4.5__. Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/montreal_curves_randinit_R045.png" alt="drawing" width="400"/>

* Wi-Fi Montreal. __R_0 = 4.5__. Interventions start on day 5. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/montreal_curves_randinit_R045_delay5.png" alt="drawing" width="400"/>

### 2.3 - Portland Sub. dataset

* Portland Sub. __R_0 = 2.5__. Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portlandsub_curves_randinit_R025.png" alt="drawing" width="400"/>

* Portland Sub. __R_0 = 2.5__. Interventions start on day 10. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portlandsub_curves_randinit_R025_delay10.png" alt="drawing" width="400"/>

* Portland Sub. __R_0 = 3.5__. Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portlandsub_curves_randinit_R035.png" alt="drawing" width="400"/>

* Portland Sub. __R_0 = 3.5__. Interventions start on day 5. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portlandsub_curves_randinit_R035_delay5.png" alt="drawing" width="400"/>

* Portland Sub. __R_0 = 4.5__. Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portlandsub_curves_randinit_R045.png" alt="drawing" width="400"/>

* Portland Sub. __R_0 = 4.5__. Interventions start on day 5. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portlandsub_curves_randinit_R045_delay5.png" alt="drawing" width="400"/>

### 2.4 - Portland dataset

* Portland. __R_0 = 2.5__. Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portland_curves_randinit_R025.png" alt="drawing" width="400"/>

* Portland. __R_0 = 2.5__. Interventions start on day 10. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portland_curves_randinit_R025_delay10.png" alt="drawing" width="400"/>

* Portland. __R_0 = 3.5__. Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portland_curves_randinit_R035.png" alt="drawing" width="400"/>

* Portland. __R_0 = 3.5__. Interventions start on day 5. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portland_curves_randinit_R035_delay5.png" alt="drawing" width="400"/>

* Portland. __R_0 = 4.5__. Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portland_curves_randinit_R045.png" alt="drawing" width="400"/>

* Portland. __R_0 = 4.5__. Interventions start on day 5. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portland_curves_randinit_R045_delay5.png" alt="drawing" width="400"/>
  
## Part 3. Predicted epidemic peaks and total outbreak sizes at various intervention levels [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)

### 3.1 - Facebook County dataset

* Facebook County. __R_0 = 2.5__ Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/facebook_epipeak_randinit_R025.png" alt="drawing" width="400"/>
<img src="/plots/facebook_episize_randinit_R025.png" alt="drawing" width="400"/>

* Facebook County. __R_0 = 2.5__ Interventions start on day 45. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/facebook_epipeak_randinit_R025_delay45.png" alt="drawing" width="400"/>
<img src="/plots/facebook_episize_randinit_R025_delay45.png" alt="drawing" width="400"/>

* Facebook County. __R_0 = 1.5__ Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/facebook_epipeak_randinit_R015.png" alt="drawing" width="400"/>
<img src="/plots/facebook_episize_randinit_R015.png" alt="drawing" width="400"/>

* Facebook County. __R_0 = 1.5__ Interventions start on day 45. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/facebook_epipeak_randinit_R015_delay45.png" alt="drawing" width="400"/>
<img src="/plots/facebook_episize_randinit_R015_delay45.png" alt="drawing" width="400"/>

* Facebook County. __R_0 = 3.5__ Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/facebook_epipeak_randinit_R035.png" alt="drawing" width="400"/>
<img src="/plots/facebook_episize_randinit_R035.png" alt="drawing" width="400"/>

* Facebook County. __R_0 = 3.5__ Interventions start on day 30. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/facebook_epipeak_randinit_R035_delay30.png" alt="drawing" width="400"/>
<img src="/plots/facebook_episize_randinit_R035_delay30.png" alt="drawing" width="400"/>

* Facebook County. __R_0 = 4.5__ Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/facebook_epipeak_randinit_R045.png" alt="drawing" width="400"/>
<img src="/plots/facebook_episize_randinit_R045.png" alt="drawing" width="400"/>

* Facebook County. __R_0 = 4.5__ Interventions start on day 15. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/facebook_epipeak_randinit_R045_delay15.png" alt="drawing" width="400"/>
<img src="/plots/facebook_episize_randinit_R045_delay15.png" alt="drawing" width="400"/>

#### 3.1.1 - Epidemic spread starts from Chicago

* Facebook County, epidemic spread starts from Chicago. __R_0 = 2.5__ Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/facebook_epipeak_chicago_R025.png" alt="drawing" width="400"/>
<img src="/plots/facebook_episize_chicago_R025.png" alt="drawing" width="400"/>

* Facebook County, epidemic spread starts from Chicago. __R_0 = 2.5__ Interventions start on day 45. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/facebook_epipeak_chicago_R025_delay45.png" alt="drawing" width="400"/>
<img src="/plots/facebook_episize_chicago_R025_delay45.png" alt="drawing" width="400"/>

### 3.2 - Wi-Fi Montreal dataset

* Wi-Fi Montreal. __R_0 = 2.5__ Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/montreal_epipeak_randinit_R025.png" alt="drawing" width="400"/>
<img src="/plots/montreal_episize_randinit_R025.png" alt="drawing" width="400"/>

* Wi-Fi Montreal. __R_0 = 2.5__ Interventions start on day 5. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/montreal_epipeak_randinit_R025_delay5.png" alt="drawing" width="400"/>
<img src="/plots/montreal_episize_randinit_R025_delay5.png" alt="drawing" width="400"/>

* Wi-Fi Montreal. __R_0 = 1.5__ Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/montreal_epipeak_randinit_R015.png" alt="drawing" width="400"/>
<img src="/plots/montreal_episize_randinit_R015.png" alt="drawing" width="400"/>

* Wi-Fi Montreal. __R_0 = 1.5__ Interventions start on day 5. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/montreal_epipeak_randinit_R015_delay5.png" alt="drawing" width="400"/>
<img src="/plots/montreal_episize_randinit_R015_delay5.png" alt="drawing" width="400"/>

* Wi-Fi Montreal. __R_0 = 3.5__ Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/montreal_epipeak_randinit_R035.png" alt="drawing" width="400"/>
<img src="/plots/montreal_episize_randinit_R035.png" alt="drawing" width="400"/>

* Wi-Fi Montreal. __R_0 = 3.5__ Interventions start on day 5. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/montreal_epipeak_randinit_R035_delay5.png" alt="drawing" width="400"/>
<img src="/plots/montreal_episize_randinit_R035_delay5.png" alt="drawing" width="400"/>

* Wi-Fi Montreal. __R_0 = 4.5__ Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/montreal_epipeak_randinit_R045.png" alt="drawing" width="400"/>
<img src="/plots/montreal_episize_randinit_R045.png" alt="drawing" width="400"/>

* Wi-Fi Montreal. __R_0 = 4.5__ Interventions start on day 5. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/montreal_epipeak_randinit_R045_delay5.png" alt="drawing" width="400"/>
<img src="/plots/montreal_episize_randinit_R045_delay5.png" alt="drawing" width="400"/>

### 3.3 - Portland Sub. dataset

* Portland Sub. __R_0 = 2.5__ Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portlandsub_epipeak_randinit_R025.png" alt="drawing" width="400"/>
<img src="/plots/portlandsub_episize_randinit_R025.png" alt="drawing" width="400"/>

* Portland Sub. __R_0 = 2.5__ Interventions start on day 10. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portlandsub_epipeak_randinit_R025_delay10.png" alt="drawing" width="400"/>
<img src="/plots/portlandsub_episize_randinit_R025_delay10.png" alt="drawing" width="400"/>

* Portland Sub. __R_0 = 1.5__ Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portlandsub_epipeak_randinit_R015.png" alt="drawing" width="400"/>
<img src="/plots/portlandsub_episize_randinit_R015.png" alt="drawing" width="400"/>

* Portland Sub. __R_0 = 1.5__ Interventions start on day 20. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portlandsub_epipeak_randinit_R015_delay20.png" alt="drawing" width="400"/>
<img src="/plots/portlandsub_episize_randinit_R015_delay20.png" alt="drawing" width="400"/>

* Portland Sub. __R_0 = 3.5__ Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portlandsub_epipeak_randinit_R035.png" alt="drawing" width="400"/>
<img src="/plots/portlandsub_episize_randinit_R035.png" alt="drawing" width="400"/>

* Portland Sub. __R_0 = 3.5__ Interventions start on day 5. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portlandsub_epipeak_randinit_R035_delay5.png" alt="drawing" width="400"/>
<img src="/plots/portlandsub_episize_randinit_R035_delay5.png" alt="drawing" width="400"/>

* Portland Sub. __R_0 = 4.5__ Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portlandsub_epipeak_randinit_R045.png" alt="drawing" width="400"/>
<img src="/plots/portlandsub_episize_randinit_R045.png" alt="drawing" width="400"/>

* Portland Sub. __R_0 = 4.5__ Interventions start on day 5. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portlandsub_epipeak_randinit_R045_delay5.png" alt="drawing" width="400"/>
<img src="/plots/portlandsub_episize_randinit_R045_delay5.png" alt="drawing" width="400"/>

### 3.4 - Portland dataset

* Portland. __R_0 = 2.5__ Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portland_epipeak_randinit_R025.png" alt="drawing" width="400"/>
<img src="/plots/portland_episize_randinit_R025.png" alt="drawing" width="400"/>

* Portland. __R_0 = 2.5__ Interventions start on day 10. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portland_epipeak_randinit_R025_delay10.png" alt="drawing" width="400"/>
<img src="/plots/portland_episize_randinit_R025_delay10.png" alt="drawing" width="400"/>

* Portland. __R_0 = 1.5__ Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portland_epipeak_randinit_R015.png" alt="drawing" width="400"/>
<img src="/plots/portland_episize_randinit_R015.png" alt="drawing" width="400"/>

* Portland. __R_0 = 1.5__ Interventions start on day 10. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portland_epipeak_randinit_R015_delay10.png" alt="drawing" width="400"/>
<img src="/plots/portland_episize_randinit_R015_delay10.png" alt="drawing" width="400"/>

* Portland. __R_0 = 3.5__ Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portland_epipeak_randinit_R035.png" alt="drawing" width="400"/>
<img src="/plots/portland_episize_randinit_R035.png" alt="drawing" width="400"/>

* Portland. __R_0 = 3.5__ Interventions start on day 5. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portland_epipeak_randinit_R035_delay5.png" alt="drawing" width="400"/>
<img src="/plots/portland_episize_randinit_R035_delay5.png" alt="drawing" width="400"/>

* Portland. __R_0 = 4.5__ Interventions start on day 0. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portland_epipeak_randinit_R045.png" alt="drawing" width="400"/>
<img src="/plots/portland_episize_randinit_R045.png" alt="drawing" width="400"/>

* Portland. __R_0 = 4.5__ Interventions start on day 5. [[back to top]](https://github.com/csresearchproject/LocalFlowNetworkEpidemic#targeted-pandemic-containment-through-identifying-local-contact-network-bottlenecks)
<img src="/plots/portland_epipeak_randinit_R045_delay5.png" alt="drawing" width="400"/>
<img src="/plots/portland_episize_randinit_R045_delay5.png" alt="drawing" width="400"/>
