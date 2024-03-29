##Microservice Deployment Script <br>
##This Repository contains a source files for deploying three microservices either in a containerized environment or on other vm instances in two methods. <br>

• In this repository there are two methos for running and deploying the services <br>
  1)method1 (giving inputs along with bash command) <br>
  2)method2 (giving inputs after running script) <br>

• Firstly there are two options to deploy the microservice as your need <br>
  1)Container (which runs the microservice on the same vm within a container based) <br>
  2)Aws (which runs the microservice on the different vm by provding ip address vm) <br>
  
• Secondly there are three microservices available <br>
  1)demo-frnotned (javascript based service shows frontend content) <br>
  2)demo-backend1 (java based server which recieves the call from front-end service) <br>
  3)demo-backend2 (python based server which recieves the call from demo-backend1 service) <br>

##Usage<br>
To run the script, follow the instructions below: <br>

1)After cloning the repository run the following commands as <br>
2)Navigate to the cloned directory for which method you are comfortable <br>
3)Run as below shows <br>

• method1: <br>
  `$ bash <script_name> <microservice_name> <environment_to_get_install> <ip_address> (give ip_address if service needs to run on different aws vm)  <br>`

example1: bash <script_name> <demo-frontend> <container> <br>
Here,example1 runs the demo-frontend service on the container within same vm <br>

example2: bash <script_name> <demo-frontend> <aws> <ip_address> <br>
Here example2 runs the demo-frontend services on other aws vm ip address provided by you <br>

• method2: <br>
  `$ bash <script_name> <br>`
Here,this runs the selected service on the container or aws provided by you as input <br>
