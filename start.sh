
echo " Building Docker Image "

docker build -t httpd-jk:latest .

echo "Build Completed"

echo "********************************** Creating Container ***********************************************"

docker container run -dit -p 80 httpd-jk

echo "***************************************  Done *********************************************************"
