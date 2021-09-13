FROM centos:latest
RUN yum install httpd zip unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page270/univers.zip /var/www/html
WORKDIR /var/www/html
RUN unzip univers.zip
RUN rm -rf univers.zip &&\
    cp -rf univers/* . &&\
    rm -rf univers 
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
