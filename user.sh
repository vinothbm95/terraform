#! /bin/bash
cd /opt
sudo yum install wget -y
sudo wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpmwget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm
sudo wget  https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.62/bin/apache-tomcat-9.0.62.tar.gz
yum install jdk-8u131-linux-x64.rpm -y

sudo tar -xvf apache-tomcat-9.0.62.tar.gz
sudo chmod 777 -R apache-tomcat-9.0.62
mv apache-tomcat-9.0.62 tomcat9

sudo wget http://download.sonatype.com/nexus/3/nexus-3.15.2-01-unix.tar.gz

sudo tar -zxvf nexus-3.15.2-01-unix.tar.gz

mv nexus-3.15.2-01 nexus

sudo useradd nexus

echo 'nexus ALL=(ALL) NOPASSWD : ALL' | sudo EDITOR='tee -a' visudo

