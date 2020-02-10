
echo " Stopping and Removing Existing Container.................."

docker stop apache-tomcat-jk-container

docker rm apache-tomcat-jk-container

echo "****************************************************************************************************"
echo " Building Docker Image "

docker build -t httpd-jk:latest .

echo "Build Completed"

echo "********************************** Creating Container ***********************************************"

docker container run -dit  --restart --name "apache-tomcat-jk-container"  -p 80 httpd-jk

docker ps | grep apache-tomcat-jk-container

echo "***************************************  Done *********************************************************"

