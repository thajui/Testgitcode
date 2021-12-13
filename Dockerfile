FROM: centos:latest
MAINTAINER: thaj@gmail.com
RUN yum install -y httpd \
  zip \ 
 unzip
ADD http:
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/* .
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
