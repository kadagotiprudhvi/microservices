# Microservice Installation Script <br>

This script facilitates the installation of microservices on either Docker containers or AWS instances based on the provided parameters.

## Usage
To use the script, follow the instructions below: <br>

## clone the code by running below command
```
git clone https://github.com/kadagotiprudhvi/microservices.git
```
## This command navigates to correct directory path of the file 
```
cd microservices/method1/
```

## • FOR DEPLOYING IN CONTAINER <br>

Use this command for deploying react service <br>
  ```
bash script.sh container react
```

Use this command for deploying java service <br>
  ```
bash script.sh container java
```

Use this command for deploying python service <br>
  ```
bash script.sh container python
```

## • FOR DEPLOYING IN AWS <br>
 
Use this command for deploying react service <br>
  ```
bash script.sh aws react <0.0.0.0> (change ip_adress as required)
```

Use this command for deploying java service    
  ```
bash script.sh aws java <0.0.0.0> (change ip_adress as required)
```

Use this command for deploying python service    
  ```
bash script.sh aws python <0.0.0.0> (change ip_adress as required)
```

type the command bash script.sh --help for details.

