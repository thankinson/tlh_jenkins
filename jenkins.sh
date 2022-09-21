#!/bin/bash

yum update -y

yum -y install java-11-openjdk java-11-openjdk-devel

# ### ### alternatives --config java
 
### if you have 2 java select option 2

#### 2

curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo

# sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

yum install jenkins -y