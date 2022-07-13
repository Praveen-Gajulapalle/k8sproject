FROM centos:latest
MAINTAINER praveen.gaju8994@gamil.com
RUN yum install -y httpd \
 zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page280/foodhut.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip foodhut.zip
RUN cp -rvf foodhut/*
RUN rm -rf foodhut foodhut.zip
CMD ["/user/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
