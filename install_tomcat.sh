#!/bin/sh

# update
yum update

# install java
yum install java-11-openjdk-devel 
# java version
java --version

# install tomcat
yum install wget tree vim
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.69/bin/apache-tomcat-9.0.69.tar.gz
cd /usr/local
tar -xvf /home/cloud_user/tomcat_app/apache-tomcat-9.0.69.tar.gz

# Run tomcat
useradd -r tomcat

systemctl daemon-reload
systemctl start tomcat.service
systemctl enable tomcat.service
# Created symlink /etc/systemd/system/multi-user.target.wants/tomcat.service → /etc/systemd/system/tomcat.service.
systemctl status tomcat.service
