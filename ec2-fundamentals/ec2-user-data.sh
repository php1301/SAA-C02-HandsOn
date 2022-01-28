#!/bin/bash
# Use this for your user data (script from top to bottom)
# install httpd (Linux 2 version)
sudo yum update -y
sudo yum install -y httpd.x86_64
sudo systemctl start httpd.service
sudo systemctl enable httpd.service
sudo chown -R $USER:$USER /var/www
echo "Hello World from $(hostname -f)" > /var/www/html/index.html