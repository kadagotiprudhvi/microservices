## Microservice Installation Script<br>
## This script facilitates the installation of microservices on either Docker containers or AWS instances based on the provided parameters.<br>

## Usage
To use the script, follow the instructions below: <br>

1)clone the code by running below command
```
git clone https://github.com/kadagotiprudhvi/microservices.git
```

2)This command navigates to correct directory path of the file <br>
  ```
cd microservices/method2/
```

3)This command runs the script and deploys the service <br>
  ```
bash script.sh
```

After running the above command enter the inputs with appropriate parameters as below mentioned <br>

Enter the input environtment to install the microservices <br>
   •aws <br>
   •container <br>

Enter the input microservice_name to install <br>
   •demo-frontend <br>
   •demo-backendend1 <br>
   •demo-backendend2 <br>

If you select aws it asks you to enter ip address <br>
   •Ip_address
