FROM ubuntu1804-default
RUN aptitude update && aptitude install net-tools git wget debconf-utils -y && aptitude safe-upgrade -y && aptitude install apache2 -y
COPY index.html /var/www/html
WORKDIR /var/www/html
CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80