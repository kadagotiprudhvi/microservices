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
  ls microserviceapp/demo-frontend
