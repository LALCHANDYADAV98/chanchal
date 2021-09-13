FROM centos:latest
MAINTAINER "LAL CHAND"
RUN yum install httpd zip unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page263/shiphile.zip /var/www/html
WORKDIR /var/www/html
RUN unzip shiphile.zip
RUN rm -rf shiphile.zip &&\
    cp -rf shiphile/* . &&\
    rm -rf shiphile
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
