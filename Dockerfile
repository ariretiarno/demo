FROM ubuntu:16.04

RUN apt update && apt install nginx -y

COPY . /var/www/html/

CMD /usr/sbin/nginx -g 'daemon off;'
