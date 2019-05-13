FROM centos:latest

RUN yum -y update && yum -y install httpd zip unzip

ADD apps.zip /var/www/html

RUN unzip -o apps.zip

ENTRYPOINT systemctl start httpd
