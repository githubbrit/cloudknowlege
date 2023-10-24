FROM centos:latest
MAINTAINER feroz.ferozahmedshah32@gmail.com
RUN apt install -y apache2\
zip\
unzip
ADD http://www.free-css.com/free-css-templates/page296/healet.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip healet.zip
RUN cp-rvf markups-healet/* .
RUN rm-rf_MACOSX markups-healet healet.zip 
CMD ["/usr/sbin/apache2", "-D", FORGROUND"]
EXPOSE 80
