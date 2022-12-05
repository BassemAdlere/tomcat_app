# tomcat_app

## Welcome to Apache Tomcat!

### What Is It?

The Apache Tomcat® software is an open source implementation of the Java
Servlet, JavaServer Pages, Java Expression Language and Java WebSocket
technologies. The Java Servlet, JavaServer Pages, Java Expression Language and
Java WebSocket specifications are developed under the
[Java Community Process](https://jcp.org/en/introduction/overview).

The Apache Tomcat software is developed in an open and participatory
environment and released under the
[Apache License version 2](https://www.apache.org/licenses/). The Apache Tomcat
project is intended to be a collaboration of the best-of-breed developers from
around the world. We invite you to participate in this open development
project. To learn more about getting involved,

##  install the java-11-openjdk-devel package:
$ sudo dnf install java-11-openjdk-devel

latest version of Tomcat 9:
https://tomcat.apache.org/download-90.cgi

$ wget  URL-YOU-COPIED-EARLIER.tar.gz
$ tar -xvf /home/cloud_user/THE-TOMCAT-FILE-YOU-COPIED-COPIED-EARLIER
$ useradd -r tomcat
$ chown -R tomcat:tomcat /usr/local/tomcat9

To add an admin user for Tomcat, you need to edit the tomcat-users.xml file:

$ cd /usr/local/tomcat9/
$ vim conf/tomcat-users.xml

<role rolename="admin-gui,manager-gui"/>
<user username="admin" password="YOURPASSWORDHERE" roles="admin-gui,manager-gui"/>
