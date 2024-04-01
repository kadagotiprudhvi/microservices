# Microservice Installation Script <br>

This script facilitates the installation of microservices on either Docker containers or AWS instances based on the provided parameters.

## Usage
To use the script, follow the instructions below: <br>


Examples:

1) Run below commands to deploy demo-frontend application at [TekspotEdu/microserviceapp](https://github.com/TekspotEdu/microserviceapp) as a Docker Container.
 ```
$ git clone https://github.com/kadagotiprudhvi/microservices.git
$ cd microservices/method1/
$ bash root.sh container demo-frontend
```

2) Run below commands to deploy demo-frontend application at [TekspotEdu/microserviceapp](https://github.com/TekspotEdu/microserviceapp) on a remote AWS VM.

 ```
$ git clone https://github.com/kadagotiprudhvi/microservices.git
$ cd microservices/method1/
$ bash root.sh aws demo-frontend IPADDRESS_OF_AWS_VM
```

Note: Make sure that SSH keys are added on the aws instance, so it wont ask for credentials.

3) Run below commands to deploy demo-backend1 application at [TekspotEdu/microserviceapp](https://github.com/TekspotEdu/microserviceapp) on a remote AWS VM.

 ```
$ git clone https://github.com/kadagotiprudhvi/microservices.git
$ cd microservices/method1/
$ bash root.sh aws demo-backend1 IPADDRESS_OF_AWS_VM
```

Note: Make sure that SSH keys are added on the aws instance, so it wont ask for credentials.


2)This command runs the script and deploys the service <br>

## • FOR DEPLOYING IN CONTAINER <br>

Use this command for deploying demo-frontend service <br>
  ```
  $ bash root.sh container demo-frontend
```

Use this command for deploying demo-backend1 service <br>
  ```
$ bash root.sh container demo-backend1
```

Use this command for deploying demo-backend2 service <br>
  ```
$ bash root.sh container demo-backend2
```

## • FOR DEPLOTING IN AWS <br>
 
Use this command for deploying demo-frontend service <br>
  ```
  $ bash root.sh aws demo-frontend <0.0.0.0> (change ip_adress as required)
```

Use this command for deploying demo-backend1 service    
  ```
  $ bash root.sh aws demo-backend1 <0.0.0.0> (change ip_adress as required)
```

Use this command for deploying demo-backend2 service    
  ```
  $ bash root.sh aws demo-backend2 <0.0.0.0> (change ip_adress as required)
```

type the command bash root.sh --help for details.

