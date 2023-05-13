dockerfile
FROM centos
MAINTAINER easynine18@gmail.com 
RUN yum install -y httpd\zip
RUN unzip photogine.zip
ADD https:url.photogine.zip /var/www/html
WORKDIR /var/www/html
RUN  cp -rvf markup-kindle*
RUN  rm -rvf markup-kindle.kindle.zip
CMD [  * /usr/sbin/httpd , "-D " FOREGROUND"]
EXPOSE 80
