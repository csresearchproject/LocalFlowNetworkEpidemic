# Targeted Pandemic Containment Through Identifying Local Contact Network Bottlenecks

This repository contains
* Extensive simulation results for network epidemic containment through contact edge weight reduction
* Code and notebooks that reproduce all figures

This page is organized as follows:
1. [Overview of methods and notations](https://github.com/csresearchproject/LocalFlowNetworkEpidemic/blob/master/README.md#part-1-overview-of-methods-and-notations)
1. [Simulated epidemic curves at 25% intervention level](https://github.com/csresearchproject/LocalFlowNetworkEpidemic/blob/master/README.md#part-2-simulated-epidemic-curves-at-25-intervention-level)
1. [Simulated epidemic peaks and total outbreak sizes at various intervention levels](https://github.com/csresearchproject/LocalFlowNetworkEpidemic/blob/master/README.md#part-3-simulated-epidemic-peaks-and-total-outbreak-sizes-at-various-intervention-levels)

## Part 1. Overview of methods and notations

Throughout our experiments, an X% intervention means that we identify X% of all edges and reduce 90% edge weight from each of these edges. For an X% intervention, we compare the following methods for selecting edges:
* __NI__: No Intervention - No edges are identified for intervention
* __UI__: Uniform Intervention - Reduce edge weights by X%*90% on **all edges**
* __HD__: High Degree - Identify X% edges that are incident to nodes having the highest degrees
* __EG__: Eigenvector centrality - Identify X% edges that are incident to nodes having the highest eigenvector centralities
* __SP__: Shortest-Path betweenness - Identify top X% edges according to the shortest-path betweenness
* __CF__: Current-Flow betweenness - Identify top X% edges according to the current-flow betweenness
* __LF__(lambda): Local-Flow betweenness - Identify top X% edges according to the lambda-local-flow betweenness

## Part 2. Simulated epidemic curves at 25% intervention level

### 2.1 - Facebook County dataset

* __R_0 = 2.5__. Interventions start on day 0
<img src="/plots/facebook_curves_randinit_R025.png" alt="drawing" width="400"/>

* __R_0 = 2.5__. Interventions start on day 15
<img src="/plots/facebook_curves_randinit_R025_delay15.png" alt="drawing" width="400"/>

* __R_0 = 2.5__. Interventions start on day 30
<img src="/plots/facebook_curves_randinit_R025_delay30.png" alt="drawing" width="400"/>

* __R_0 = 2.5__. Interventions start on day 45
<img src="/plots/facebook_curves_randinit_R025_delay45.png" alt="drawing" width="400"/>

* __R_0 = 2.5__. Interventions start on day 60
<img src="/plots/facebook_curves_randinit_R025_delay60.png" alt="drawing" width="400"/>

* __R_0 = 1.5__. Interventions start on day 0
<img src="/plots/facebook_curves_randinit_R015.png" alt="drawing" width="400"/>

* __R_0 = 1.5__. Interventions start on day 60
<img src="/plots/facebook_curves_randinit_R015_delay60.png" alt="drawing" width="400"/>

* __R_0 = 3.5__. Interventions start on day 0
<img src="/plots/facebook_curves_randinit_R035.png" alt="drawing" width="400"/>

* __R_0 = 3.5__. Interventions start on day 30
<img src="/plots/facebook_curves_randinit_R035_delay30.png" alt="drawing" width="400"/>

* __R_0 = 4.5__. Interventions start on day 0
<img src="/plots/facebook_curves_randinit_R045.png" alt="drawing" width="400"/>

* __R_0 = 4.5__. Interventions start on day 15
<img src="/plots/facebook_curves_randinit_R045_delay15.png" alt="drawing" width="400"/>
  
## Part 3. Simulated epidemic peaks and total outbreak sizes at various intervention levels
