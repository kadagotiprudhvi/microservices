Microservice Deployment Script
This Repository contains a source files for deploying three microservices either in a containerized environment or on other vm instances in two methods.

• In this repository there are two methos for running and deploying the services
  1)method1 (giving inputs along with bash command)
  2)method2 (giving inputs after running script)

• First there are two options to deploy the microservice as your need
  1)Container (which runs the microservice on the same vm within a container based)
  2)Aws (which runs the microservice on the different vm by provding ip address vm)

• Secondly there are three microservices available
  1)demo-frnotned (javascript based service shows frontend content)
  2)demo-backend1 (java based server which recieves the call from front-end service)
  3)demo-backend2 (python based server which recieves the call from demo-backend1 service)

Usage
To run the script, follow the instructions below:

1)After cloning the repository run the following commands as
2)Navigate to the cloned directory for which method you are comfortable
3)Run as below shows

• method1:
  $ bash <script_name> <microservice_name> <environment_to_get_install> <ip_address> (give ip_address if service needs to run on different aws vm) 

example1: bash <script_name> <demo-frontend> <container>
Here,example1 runs the demo-frontend service on the container within same vm

example2: bash <script_name> <demo-frontend> <aws> <ip_address>
Here example2 runs the demo-frontend services on other aws vm ip address provided by you

• method2:
  $ bash <script_name>
Here,this runs the selected service on the container or aws provided by you as input
