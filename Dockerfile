FROM centos:centos6

MAINTAINER imtnd

RUN yum install -y httpd
ADD index.html /var/www/html/index.html

EXPOSE 80/tcp
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

