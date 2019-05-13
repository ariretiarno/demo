FROM centos:latest

RUN yum -y update && yum -y install httpd zip unzip

ADD . /var/www/html


CMD /usr/sbin/apache2 -DFOREGROUND
