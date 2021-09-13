FROM centos:latest
RUN yum install httpd zip unzip -y
RUN yum install tree -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page270/one-health.zip /var/www/html
WORKDIR /var/www/html
RUN unzip one-health.zip
RUN rm -rf one-health.zip &&\
    cp -rf one-health/* . &&\
    rm -rf one-health 
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
