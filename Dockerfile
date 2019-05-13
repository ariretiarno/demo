FROM centos:latest

RUN yum -y update && yum -y install httpd zip unzip

ADD . /var/www/html


ENTRYPOINT systemctl start httpd
