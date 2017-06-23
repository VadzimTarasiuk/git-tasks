#! /bin/bash
echo 127.0.0.1 jenkins >> /etc/hosts
yum install nginx -y
cp /etc/nginx/nginx.conf /home/backup
awk 'NR==1,/location/{gsub("location / {","location / {\nproxy_pass http://localhost:8080;")}{print}' /etc/nginx/nginx.conf > tmp
mv -uf tmp /etc/nginx/nginx.conf
echo [Unit] > tmp
echo Description=Nginx start >> tmp
echo After=network.target remote-fs.target nss-lookup.target >> tmp
echo [Service] >> tmp
echo Type=forking >> tmp
#echo Environment=JAVA_HOME=/opt/oracle/java/x64/jdk1.7.0_79/jre >> tmp
echo ExecStart=/usr/sbin/nginx >> tmp
echo PrivateTmp=true >> tmp
echo [Install] >> tmp
echo WantedBy=multi-user.target >> tmp
mv tmp /usr/lib/systemd/system/nginxinit.service
systemctl enable nginxinit.service
systemctl start nginx
#tar -xf java.tar.gz
#JAVA_HOME=./jdk1.8.0_131/jre
#export JAVA_HOME
