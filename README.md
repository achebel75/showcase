# Showcase

## What is the aim?

The purpose is to provide a `CI/CD pipeline that enables the fastest possible` a hello world app deployment: 
  - [x] each deployment will trigger the next one, and this for `15 minutes without disturbing the user experience`. 
  - [x] the web user should not get any errors during the deployments.


## Hello World application?

This Hello World application is a single HTML/javascript page with below features: 
  - [x]  5 seconds automatic refresh 
  - [x]  # of the deployment for the day
  - [x]  the seconds counting on the page



## What is the technical stack used & Why?

| Name                   | Tools                                                                       | Why                                                                                        |
|------------------------|-----------------------------------------------------------------------------|--------------------------------------------------------------------------------------------|
| Developer IDE          | VScode                                                                    | Open source IDE with a plenty of plugins                                                     |
| Git Repository Service | GitHub                                                                    | The most popular web-based version control and collaboration platform for software developers| 
| CI/CD Service             | GitHub Actions                                                            | GitHub Actions give the flexibility to build an automated software development lifecycle workflow with hosted runners                             |                     |
| Cloud Provider         | Azure                                                                     | Microsoft's public cloud platform (IaaS, PaaS, FaaS..)                                                                                            |
| Container Orchestrator | AKS                                                                       |    Azure Service managed                                                                                          |
| Container Registry     | Docker Hub                                                                       |  Hosted repository service for container images                                                                                              |
| Secret Management      | GitHub Actions Secrets                                                    |   Integrated with GitHub Actions                                                                                           |
| Javascript runtime environment      | Node.js                                                   |    Easy to get started with development                                                                                          |


## Project Details

Within the repository, you will find 2 branches: 
  - [x] _main_ branch contains a [pipeline](https://github.com/achebel75/showcase/blob/main/.github/workflows/showcase-workflow.yml) that runs a single job to build the application image, push it to Docker Hub, deploy the web application on AKS 
  - [x] _fast_ branch contains a [pipeline](https://github.com/achebel75/showcase/blob/fast/.github/workflows/showcase-workflow.yml) that runs several instances of the same single job in parallel mode.

<img width="672" alt="image" src="https://user-images.githubusercontent.com/41162971/227932789-7f2b6563-cbfa-4ea2-b17d-5f5f87798bdb.png">


## How the application is deployed in non disruptive manner?

The application is deployed on AKS (Azure Kubernetes Service) using the `rolling update strategy` offered by K8S. 
It will replaces pods running the old version of the application with the new version, one by one, `without downtime to the cluster`.



## What you should know about GitHub Actions

GitHub Actions is CI/CD platform that allows you to automate your build, test, and deployment pipeline.

A GitHub Action workflow is pipeline equivalent to a jenkins pipeline described in Jenkinsfile: 
  - It is split in jobs 
  - A job is running on a GitHUb runner
  - You can run multiple jobs in parallel
  - A workflow can be triggered in multiple ways: git push, pull request change,...
  
An Action is a custom application that performs a complex and repeated task. It is equivalent of Jenkins plugin.

A GitHub runner is a build agent that can be GitHub hosted or self-hosted. A runner can only process one job at a time.


