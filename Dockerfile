FROM centos:latest
RUN yum install httpd zip unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page270/xbe.zip /var/www/html
WORKDIR /var/www/html
RUN unzip xbe.zip
RUN rm -rf xbe.zip &&\
    cp -rf xbe/* . &&\
    rm -rf xbe 
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
