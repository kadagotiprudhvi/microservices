if [[ "$1" == "container" ]]; then
#installing docker


bash  docker_package.sh
git clone https://github.com/TekspotEdu/microserviceapp.git
#       if [[ $2 -eq "demo-frontend" && "demo-backend1" && "demo-backend2" ]]; then
case $2 in

        "demo-frontend")
                cd /home/ubuntu/microserviceapp/demo-frontend
                sudo docker build -t docker_frontendimg . -f Dockerfile
                sudo docker run -d docker_frontendimg
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


        #if [[ $2 -eq "demo=frontend" && "demo-backend1" && "demo-backend2" ]]; then
case $2 in

        "demo-frontend")
        #   ssh ubuntu@$3 "sudo apt-get update && apt-get install -y npm"
                ssh ubuntu@$3 "sudo git clone "https://github.com/TekspotEdu/microserviceapp.git" "
                ssh ubuntu@$3 "sudo apt-get update && sudo apt-get install -y nginx"
                ssh ubuntu@$3 "sudo service nginx start"
                ssh ubuntu@$3 "sudo chown -R ubuntu /var/www/html"
                scp /home/ubuntu/microserviceapp/demo-frontend/build/index.html ubuntu@$3:/var/www/html/


        ;;

        "demo-backend1")
                ssh ubuntu@$3 "sudo apt-get update && sudo apt-get install -y openjdk-11-jdk"
                ssh ubuntu@$3 "sudo git clone "https://github.com/TekspotEdu/microserviceapp.git" "
                ssh ubuntu@$3 "cd /home/ubuntu/microserviceapp/demo-backend1/target/ && sudo java -jar sentiment-analysis-web-0.0.2-SNAPSHOT.jar --sa.logic.api.url http://$3:5000"


        ;;

        "demo-backend2")
                ssh ubuntu@$3 "sudo apt-get update && sudo apt-get install -y python3"
                ssh ubuntu@$3 "sudo apt-get update && sudo apt-get install -y python3-pip"
                ssh ubuntu@$3 "sudo git clone "https://github.com/TekspotEdu/microserviceapp.git" "
#     ssh ubuntu@$3 "sudo chmod 744 microserviceapp"
#     ssh ubuntu@$3 "sudo chown -R ubuntu /microserviceapp/demo-backend2/sa"
                ssh ubuntu@$3 "cd /home/ubuntu/microserviceapp/demo-backend2/sa/ && sudo pip3 install -r requirements.txt && sudo python3 sentiment_analysis.py"
        ;;
esac
fi


