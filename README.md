# Automated Deployment of react, java and python applications <br>

This repository consist of two scripts, and both of them may be used for deploying [TekspotEdu/microserviceapp](https://github.com/TekspotEdu/microserviceapp) applications to VMs or Containers. 


## The folder method2

This script is best for beginners and it will walk you through a wizard where you will be asked to enter below information. 

1) Environment to deploy (eg: aws VMs, Docker Host)
2) Which Application (eg: react, java, python etc)
3) Details of the Deployment server (eg: IP address of the deployment server etc)

After you entered all the information, the script will deploy the application to selected environment. 


## The folder method1

This script is non-interactive and its best for automation purpose. You will pass the inputs as command line arguments to this script, and it will deploy the applications.

Please type ./method1/root.sh --help to understand the usage of this script.

The applications are available at https://github.com/TekspotEdu/microserviceapp .
