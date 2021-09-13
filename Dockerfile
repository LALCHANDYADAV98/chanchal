FROM centos:latest
RUN yum install httpd zip unzip -y
RUN yum install tree -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page270/unika.zip /var/www/html
WORKDIR /var/www/html
RUN unzip unika.zip
RUN rm -rf unika.zip &&\
    cp -rf unika/* . &&\
    rm -rf unika 
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
