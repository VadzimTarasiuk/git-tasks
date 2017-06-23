#!/bin/bash
sudo su
yum install nginx -y;

touch /etc/nginx/conf.d/newser.conf;
echo "server {
        listen       80 default_server;
        listen       [::]:80 default_server;
        server_name  _;
        root         /usr/share/nginx/html;

        # Load configuration files for the default server block.
        include /etc/nginx/default.d/*.conf;

        location / {
	proxy_pass http://127.0.0.1:8080;

        }

        error_page 404 /404.html;
            location = /40x.html {
        }

        error_page 500 502 503 504 /50x.html;
            location = /50x.html {
        }
    } " >>/etc/nginx/conf.d/newser.conf;




