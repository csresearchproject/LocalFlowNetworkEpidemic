# Targeted Pandemic Containment Through Identifying Local Contact Network Bottlenecks

This repository contains
* Extensive simulation results for network epidemic containment through contact edge weight reduction
* Code and notebooks that reproduce all figures

This page is organized as follows:
1. Overview of methods and notations
1. Simulated epidemic curves at 25% intervention level
1. Simulated epidemic peaks and total outbreak sizes at various intervention level

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

<img src="/epipeak_portlandsub_randinit_R025_delay10.png" alt="drawing" width="400"/>
