
git pull

# Poping up the options for slecting environment to get install

echo " select the platform to get instal

aws
container

"
read platform

#Poping up the options for selecting the service to get install

echo " select the service to get install

react
java
python

"
read service


if [ "$platform" == "container" ]; then



#installing docker
bash  docker_package.sh

#intalling the app

case $service in

"react")
        cd microserviceapp/demo-frontend
        sudo docker build -t docker_frontendimg . -f Dockerfile
        sudo docker run docker_frontendimg
;;

"java")
        cd microserviceapp/demo-backend1
        sudo docker build -t docker_backend1img . -f Dockerfile
        sudo docker run docker_backend1img
;;

"python")
        cd microserviceapp/demo-backend2
        sudo docker build -t docker_backend2img . -f Dockerfile
        sudo docker run docker_backend2img

;;
esac

else

echo "enter ip adress:"
read ip
case $service in

"react")
    ssh ubuntu@$ip "sudo git clone "https://github.com/TekspotEdu/microserviceapp.git" "
    ssh ubuntu@$ip "sudo apt-get update && sudo apt-get install -y nginx"
    ssh ubuntu@$ip "sudo service nginx start"
    ssh ubuntu@$ip "sudo chown -R ubuntu /var/www/html"
    scp microserviceapp/demo-frontend/build/index.html ubuntu@$ip:/var/www/html/


;;

"java")
    ssh ubuntu@$ip "sudo apt-get update && sudo apt-get install -y openjdk-11-jdk"
    ssh ubuntu@$ip "sudo git clone "https://github.com/TekspotEdu/microserviceapp.git" "
    ssh ubuntu@$ip "cd microserviceapp/demo-backend1/target/ && sudo java -jar sentiment-analysis-web-0.0.2-SNAPSHOT.jar --sa.logic.api.url http://$ip:5000"


;;

"python")
    ssh ubuntu@$ip "sudo apt-get update && sudo apt-get install -y python3"
    ssh ubuntu@$ip "sudo apt-get update && sudo apt-get install -y python3-pip"
    ssh ubuntu@$ip "sudo git clone "https://github.com/TekspotEdu/microserviceapp.git" "
    ssh ubuntu@$ip "cd microserviceapp/demo-backend2/sa/ && sudo pip3 install -r requirements.txt && sudo python3 sentiment_analysis.py"
;;

esac
fi














