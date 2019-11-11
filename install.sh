#!/usr/bin/env bash

sudo yum install java-1.8.0-openjdk -y
sudo yum install -y wget
cd /tmp
sudo wget https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm
sudo rpm -ivh mysql57-community-release-el7-9.noarch.rpm
sudo yum install -y mysql mysql-server
sudo yum install -y maven

# Config CodeDeploy
sudo yum install -y ruby
cd /home/centos
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo systemctl start codedeploy-agent
sudo systemctl enable codedeploy-agent.service

# Config CloudWatch log
wget https://s3.us-east-1.amazonaws.com/amazoncloudwatch-agent-us-east-1/centos/amd64/latest/amazon-cloudwatch-agent.rpm
sudo rpm -U ./amazon-cloudwatch-agent.rpm
sudo systemctl enable amazon-cloudwatch-agent
sudo systemctl start amazon-cloudwatch-agent
