#!/bin/bash
#########################################
#########################################
#                                       #
# this script is for setting up jenkins #
# server on a ubuntu vm either localy   #
# or in the cloud.                      # 
#                                       #
#########################################
#########################################
#########################################
#########################################
#                                       #
#   aditinol installs                   #
#                                       #
# Git                                   #
# Docker                                #
# Python3                               #
# Python pip3                           #
# Pytest                                #
#                                       #
#########################################
#########################################
# updates apt repo
sudo apt update && sudo apt upgrade -y
# installs java
sudo apt install openjdk-11-jre -y
# switches to root
sudo bash
# gets jenkins url 
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
# updates apt-get repo list
sudo apt-get update
# installs jenkins
sudo apt-get install jenkins
# enables jenkins to start when server is run
sudo systemctl enable jenkins
# starts jenkins
sudo systemctl start jenkins
##################################################
# installs git, docker, python3, pyton-pip, pytest
sudo apt install -y git 
sudo apt install -y docker.io 
sudo apt install -y python-is-python3 
sudo apt install -y python3-pip
sudo apt install -y python3-pytest
# enables docker to start when server is run
sudo systemctl enable docker
# starts docker
sudo systemctl start docker
# creates docker group
sudo groupadd docker
# dose soemthing
sudo gpasswd -a jenkins docker
# restarts docker and jenkins
sudo service docker restart
sudo service jenkins restart
