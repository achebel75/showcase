# Showcase

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
| Cloud Provider         | Azure                                                                     | Microsoft's public cloud platform (IaaS, PaaS, FaaS..)                                                                                            |
| Container Orchestrator | AKS                                                                       |    Azure Service managed                                                                                          |
| Container Registry     | Docker Hub                                                                       |  Hosted repository service for container images                                                                                              |
| Secret Management      | GitHub Actions Secrets                                                    |   Integrated with GitHub Actions                                                                                           |
| Javascript runtime environment      | Node.js                                                   |    Easy to get started with development                                                                                          |


## Project Details

In this repository, you will find 2 branches : 
  - [x] _main_ branch contains a pipeline that run one job for building the app image, pushing it to Docker Hub, deploying the web application to AKS 
  - [x] _fast_ branch contains a pipeline that run several jobs in parrallel for doing the same

<img width="672" alt="image" src="https://user-images.githubusercontent.com/41162971/227932789-7f2b6563-cbfa-4ea2-b17d-5f5f87798bdb.png">


## How the application is deployed in non disruptive maner?

The application is deployed on AKS (Azure Kubernetes Service) using the `rolling update strategy` offer by K8S. 
It will replaces pods running the old version of the application with the new version, one by one, without downtime to the cluster.



## What you should know about GitHub Actions

GitHub Actions is CI/CD platform that allows you to automate your build, test, and deployment pipeline.

A GitHub Action workflow is pipeline equivalent of a jenkins pipeline described in Jenkinsfile : 
  - It is split in jobs. 
  - A job is running on a GitHUb runner
  - You can run multiple jobs in parallel
  - a workflow can be triggered in multiple ways : git push, pull request change...
  
An Action is a custom application that performs a complex and repeated task. It is equivalent of Jenkins plugins.

A GitHub runner is a build agent that can be GitHub hosted or self-hosted. A runner can only process one job at a time.




## Remarks

