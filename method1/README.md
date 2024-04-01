# Microservice Installation Script <br>

This script facilitates the installation of microservices on either Docker containers or AWS instances based on the provided parameters.

## Usage
To use the script, follow the instructions below: <br>

## clone the code by running below command
```
git clone https://github.com/kadagotiprudhvi/microservices.git
```
## use this command to naviagte to correct path
```
cd microservices/method1/
```

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

## • FOR DEPLOYING IN AWS <br>
 
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

