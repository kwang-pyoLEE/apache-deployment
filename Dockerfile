FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y apache2
COPY index.html /var/www/html/index.html
WORKDIR /var/www/html
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
