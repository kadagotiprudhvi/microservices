Microservice Installation Script
This script facilitates the installation of microservices on either Docker containers or AWS instances based on the provided parameters.

Usage
To use the script, follow the instructions below:

1)This command navigates to correct directory path of the file 
  $ cd Microservices/method1/

2)This command runs the script and deploys the service  

• FOR DEPLOYING IN CONTAINER

For deploying demo-frontend service
  $ bash root.sh container demo-frontend

For deploying demo-backend1 service
  $ bash root.sh container demo-backend1

For deploying demo-backend2 service
  $ bash root.sh container demo-backend2

• FOR DEPLOTING IN AWS
 
For deploying demo-frontend service  
  $ bash root.sh aws demo-frontend <0.0.0.0> (change ip_adress as required)

For deploying demo-backend1 service    
  $ bash root.sh aws demo-backend1 <0.0.0.0> (change ip_adress as required)

For deploying demo-backend2 service    
  $ bash root.sh aws demo-backend2 <0.0.0.0> (change ip_adress as required)




