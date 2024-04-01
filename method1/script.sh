if [[ "$1" == "container" ]]; then

#installing docker
bash  docker_package.sh
git clone https://github.com/TekspotEdu/microserviceapp.git

case $2 in

        "react")
                cd microserviceapp/demo-frontend
                sudo docker build -t docker_frontendimg . -f Dockerfile
                sudo docker run -d docker_frontendimg
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


case $2 in

        "react")
                ssh ubuntu@$3 "sudo git clone "https://github.com/TekspotEdu/microserviceapp.git" "
                ssh ubuntu@$3 "sudo apt-get update && sudo apt-get install -y nginx"
                ssh ubuntu@$3 "sudo service nginx start"
                ssh ubuntu@$3 "sudo chown -R ubuntu /var/www/html"
                scp microserviceapp/demo-frontend/build/index.html ubuntu@$3:/var/www/html/


        ;;

        "java")
                ssh ubuntu@$3 "sudo apt-get update && sudo apt-get install -y openjdk-11-jdk"
                ssh ubuntu@$3 "sudo git clone "https://github.com/TekspotEdu/microserviceapp.git" "
                ssh ubuntu@$3 "cd microserviceapp/demo-backend1/target/ && sudo java -jar sentiment-analysis-web-0.0.2-SNAPSHOT.jar --sa.logic.api.url http://$3:5000"


        ;;

        "python")
                ssh ubuntu@$3 "sudo apt-get update && sudo apt-get install -y python3"
                ssh ubuntu@$3 "sudo apt-get update && sudo apt-get install -y python3-pip"
                ssh ubuntu@$3 "sudo git clone "https://github.com/TekspotEdu/microserviceapp.git" "
                ssh ubuntu@$3 "cd microserviceapp/demo-backend2/sa/ && sudo pip3 install -r requirements.txt && sudo python3 sentiment_analysis.py"
        ;;
esac
fi

















