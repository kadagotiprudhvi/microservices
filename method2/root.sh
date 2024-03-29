                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            final_script
############################


#cd microserviceapp
git pull

#slecting platform to get install

echo " select the platform to get instal

aws
container

"
read platform

#selecting the service to get install

echo " select the service to get install

demo-frontend
demo-backend1
demo-backend2

"
read service


if [ "$platform" == "container" ]; then



#installing docker

#cd /home/ubuntu
bash  docker_package

#intalling the app

case $service in

"demo-frontend")
        cd /home/ubuntu/microserviceapp/demo-frontend
        sudo docker build -t docker_frontendimg . -f Dockerfile
        sudo docker run docker_frontendimg
;;

"demo-backend1")
        cd /home/ubuntu/microserviceapp/demo-backend1
        sudo docker build -t docker_backend1img . -f Dockerfile
        sudo docker run docker_backend1img
;;

"demo-backend2")
        cd /home/ubuntu/microserviceapp/demo-backend2
        sudo docker build -t docker_backend2img . -f Dockerfile
        sudo docker run docker_backend2img

;;
esac


else




echo "enter ip adress:"
read ip
case $service in

"demo-frontend")
#   ssh ubuntu@$ip "sudo apt-get update && apt-get install -y npm"
    ssh ubuntu@$ip "sudo git clone "https://github.com/TekspotEdu/microserviceapp.git" "
    ssh ubuntu@$ip "sudo apt-get update && sudo apt-get install -y nginx"
    ssh ubuntu@$ip "sudo service nginx start"
    ssh ubuntu@$ip "sudo chown -R ubuntu /var/www/html"
    scp /home/ubuntu/microserviceapp/demo-frontend/build/index.html ubuntu@$ip:/var/www/html/


;;

"demo-backend1")
    ssh ubuntu@$ip "sudo apt-get update && sudo apt-get install -y openjdk-11-jdk"
    ssh ubuntu@$ip "sudo git clone "https://github.com/TekspotEdu/microserviceapp.git" "
    ssh ubuntu@$ip "cd /home/ubuntu/microserviceapp/demo-backend1/target/ && sudo java -jar sentiment-analysis-web-0.0.2-SNAPSHOT.jar --sa.logic.api.url http://$ip:5000"


;;

"demo-backend2")
    ssh ubuntu@$ip "sudo apt-get update && sudo apt-get install -y python3"
    ssh ubuntu@$ip "sudo apt-get update && sudo apt-get install -y python3-pip"
    ssh ubuntu@$ip "sudo git clone "https://github.com/TekspotEdu/microserviceapp.git" "
#     ssh ubuntu@$ip "sudo chmod 744 microserviceapp"
#     ssh ubuntu@$ip "sudo chown -R ubuntu /microserviceapp/demo-backend2/sa"
    ssh ubuntu@$ip "cd /home/ubuntu/microserviceapp/demo-backend2/sa/ && sudo pip3 install -r requirements.txt && sudo python3 sentiment_analysis.py"
;;

esac
fi





#read "bash final_script--help"
#echo "    "











