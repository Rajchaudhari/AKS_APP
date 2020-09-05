FROM docker.io/centos
RUN yum update -y
RUN yum install httpd -y
#RUN rm -f /usr/local/apache2/htdocs/index.html
COPY ./index.html /var/www/html
COPY ./spectrumV.css /var/www/html
CMD ["/sbin/httpd","-D", "FOREGROUND"]
