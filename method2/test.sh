echo "select the platfoen to get install
aws
container
"
read platform

echo "select the service to get install

react
java
python

"
read service

git clone https://github.com/TekspotEdu/microserviceapp.git

if [ "$platforn" == "container" ]; then
bash docker_package.sh

case $service in

"react")
        cd /home/ubuntu/microserviceapp/demo-frontend
        sudo docker build -t docker_frontendimg . -f Dockerfile
        sudo docker run docker_frontendimg
;;

"java")
        cd /home/ubuntu/microserviceapp/demo-backend1
        sudo docker build -t docker_backend1img . -f Dockerfile
        sudo docker run docker_backend1img
;;

"python")
        cd /home/ubuntu/microserviceapp/demo-backend2
        sudo docker build -t docker_backend2img . -f Dockerfile
        sudo docker run docker_backend2img

;;
esac


else

echo "enter ip address"
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

"pyhton")
        ssh ubuntu@$ip "sudo apt-get update && sudo apt-get install -y python3"
        ssh ubuntu@$ip "sudo apt-get update && sudo apt-get install -y python3-pip"
        ssh ubuntu@$ip "sudo git clone "https://github.com/TekspotEdu/microserviceapp.git" "
        ssh ubuntu@$ip "cd microserviceapp/demo-backend2/sa/ && sudo pip3 install -r requirements.txt && sudo python3 sentiment_analysis.py"
;;

esac
fi

  
