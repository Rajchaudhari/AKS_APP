FROM docker.io/httpd
RUN apt-get update -y
RUN apt-get upgrade -y
RUN rm -f /usr/local/apache2/htdocs/index.html
ONBUILD COPY ./index.html /usr/local/apache2/htdocs/
ONBUILD COPY ./spectrumV.css /usr/local/apache2/htdocs/
CMD ["/sbin/httpd","-D", "FOREGROUND"]
