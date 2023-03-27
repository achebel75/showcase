# showcase

## What is the goal?

The purpose is to provide a `pipeline that enables the fastest possible` a hello world app deployment : 
  - [x] each deployment will trigger the next one, and this for `15 minutes without disturbing the user experience`. 
  - [x] the web user should not get any errors during the deployments.


## Hello World application?

This Hello World application is composed of a single HTML page including javascript code with the following requirements : 
  - [x]  to refresh every 5 seconds 
  - [x]  to show the # of the deployment for the day
  - [x]  to show the seconds counting on the page



## What is the technical stack used & Why?

| Name                   | Tools                                                                       | Why                                                                                        |
|------------------------|-----------------------------------------------------------------------------|--------------------------------------------------------------------------------------------|
| Developer IDE          | VScode                                                                    | Open source IDE with a plenty of plugins                                                     |
| Git Repository Service | GitHub                                                                    | The most popular web-based version control and collaboration platform for software developers| 
| CI Service             | GitHub Actions                                                            | CI Service that offer a plenty of actions with hosted runners                             | 
| CD Service             | Github Actions                                                            | CD Service that offer a plenty of actions with hosted runners                                             |
| Cloud Prodvider        | Azure                                                                     |                                                                                              |
| Container Orchestrator | AKS                                                                       |                                                                                              |
| Container Registry     | Docker Hub                                                                       |                                                                                              |
| Secret Management      | GitHub Actions Secrets                                                    |                                                                                              |

## How the application is deployed in non disruptive maner?

The application is deployed on AKS (Azure Kubernetes Service) using the rolling update strategy offer by K8S. 
It will replaces pods running the old version of the application with the new version, one by one, without downtime to the cluster.


## Resources


## Useful Documentation

