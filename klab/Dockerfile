FROM debian:wheezy
MAINTAINER mda <mda@kir.it>
# Install packages
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
apt-get -y install apache2 apache2-mpm-prefork \
 php5 php5-cli php5-common php5-gd php5-mysql php5-odbc php5-sqlite \
 libdbd-mysql-perl mysql-client mysql-common mysql-server php5-mysql \
 	telnet nano vim


ADD etc/apache2/apache2.conf /etc/apache2/apache2.conf
ADD etc/apache2/httpd.conf /etc/apache2/httpd.conf
ADD etc/apache2/sites-available/default /etc/apache2/sites-available/default
ADD etc/apache2/sites-enabled//000-default /etc/apache2/sites-enabled//000-default
ADD etc/php5/ /etc/php5/
ADD services-start.sh /services-start.sh
#ADD mysqldump_labp2r.sh /mysqldump_labp2r.sh

RUN chmod a+x /services-start.sh 
#RUN chmod a+x /mysqldump_labp2r.sh
RUN	a2enmod rewrite


RUN mkdir /var/www/htdocs
RUN mkdir /dumpsql

VOLUME ["/var/www/htdocs"]
EXPOSE 80

#ENTRYPOINT umount /etc/hosts && echo "10.10.28.2	mydb-server\n10.10.28.2	mydb-server-view\n10.10.28.2	mydb-server-brg\n10.10.28.2	mydb-brg-server" > /etc/hosts && /bin/sh /services-start.sh && /bin/sh /mysqldump_labp2r.sh && bash
ENTRYPOINT umount /etc/hosts && echo "10.10.28.2	mydb-server\n10.10.28.2	mydb-server-view\n10.10.28.2	mydb-server-brg\n10.10.28.2	mydb-brg-server" > /etc/hosts && /bin/sh /services-start.sh && /bin/sh && bash
