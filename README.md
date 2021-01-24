# Overview

A Github repo is built from scratch along with a scaffolding to achieve Continuous Integration and Continuous Delivery. Project scaffolding includes Makefile, requirements.txt, Python virtual environment , project scripts and test files. To explore the CI/CD pipeline, A python based machine learning app using the flask web framework has been deployed as the Azure web app. This ML application uses a  pre trained sklearn model to predict house prices in Boston based on certain defined features. 

The Project intends to use
  * Github Actions 
  * Azure Pipelines

## Project Plan
<TODO: Project Plan

* A link to a Trello board for the project [https://trello.com/b/F07Mi3K6/ci-cd-pipeline]
* A link to a spreadsheet that includes the original and final project plan>

## Instructions

The top level architecture of the project is presented below
<TODO:  
* Architectural Diagram (Shows how key parts of the system work)>

Whenever new code is pushed into github, the Gihub Actions is launched by deafult to run the tests listed in Makefile, thus ensuring Continuous Integration. The Azure piplines are connected to Github to ensure Continuous Delivery, thus Azure Web App is deployed on every successfull code commit.


<TODO:  Instructions for running the Python project.  How could a user with no context run this project without asking you for any help.  Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:

1. Prerequisites
    - [Azure Account](https://portal.azure.com)
    - [Azure DevOp Account](https://dev.azure.com/)
    - [Azure Pipelines] (https://github.com/marketplace/azure-pipelines)

2. Azure CLI Setup
    - Login to Azure CLI
    - Setup Azure Shell with Github Integration
        - Generate ssh keygen using the command ``ssh-keygen -t rsa ``
        - Use the command  ``cat your-keyfile-path `` and copy the public key
        - Add the public key as [new SSH Key] (https://github.com/settings/keys) in Github
        
3. Flask ML Service Launch
      - Setup a virtual environment using the following command
        -``python3 -m venv ~/.demovenv``
        -``source ~/.demovenv/bin/activate``
      - Run ``make install``
      - Run ``az webapp up -n <your-appservice>
        
4. Configure Continuous Integration
    - Workflow automation can be achieved by Github Actions
    - You can find the Action file inside the .github/workflows
    - If you prefer to create Github Action on your own,
        - Click on ``Actions`` on the top of your repo
        - Click ``New Workflow``
        - Replace the content of the yml file with the contents of .github/workflows/pythonapp.yml
        - Commit with appropriate commit message
        
 4. Configure Continuous Delivery
    - Login [Azure DevOp](https://dev.azure.com/)
    - Create new project
    - Setup new service connection (Preferrably of type Azure Resource Manager)
    - Choose your subscription scope level, subscription, resource group, service connection name and grand access to all pipelines
    - Select pipelines and create a new one
    - Connect to Github
    - Configure Python to Linux Web App on Azure
    - Save and Run
    
Now the pipeline is created. The pipeline will pull the new version of code during the each commit. You can access the commit history, build summary, deployment summary can be accessed easily. 



* Login to Azure CLI
* Setup SSH 
* Clone the project

* Project running on Azure App Service

* Project cloned into Azure Cloud Shell

* Passing tests that are displayed after running the `make all` command from the `Makefile`

* Output of a test run

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

* Running Azure App Service from Azure Pipelines automatic deployment

* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
The output should look similar to this:

```bash
udacity@Azure:~$ ./make_predict_azure_app.sh
Port: 443
{"prediction":[20.35373177134412]}
```

* Output of streamed log files from deployed application

> 

## Enhancements

<TODO: A short description of how to improve the project in the future>

## Demo 

<TODO: Add link Screencast on YouTube>


