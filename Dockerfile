FROM centos:latest
LABEL Maintainer="suraj@gmail.com"
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN dnf distro-sync -y
# RUN dnf -y install java
RUN yum install -y httpd \
  zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22
















# FROM  centos:latest
# LABEL Maintainer="suraj@gmail.com"
# RUN cd /etc/yum.repos.d/
# RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
# RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
# RUN yum update -y
# RUN yum install httpd -y
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip /var/www/html/
# WORKDIR /var/www/html/
# RUN yum install zip unzip -y
# RUN unzip shine.zip
# RUN cp -rvf shine/* .
# RUN rm -rf shine shine.zip
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
# EXPOSE 80 



# ----------------------------------------
# FROM centos:latest
# LABEL Maintainer="suraj@gmail.com"
# RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
# RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
# RUN dnf distro-sync -y
# # RUN dnf -y install java
# RUN yum install -y httpd \
#   zip \
#   unzip
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/loxury.zip /var/www/html/
# WORKDIR /var/www/html
# RUN unzip loxury.zip
# RUN cp -rvf loxury/* .
# RUN rm -rf loxury loxury.zip
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
# EXPOSE 80 


# -------------
# FROM centos:latest
# LABEL Maintainer="suraj@gmail.com"
# RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
# RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
# RUN dnf distro-sync -y
# # RUN dnf -y install java
# RUN yum install -y httpd \
#   zip \
#   unzip
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page290/cryptop.zip /var/www/html/
# WORKDIR /var/www/html
# RUN unzip cryptop.zip
# RUN cp -rvf cryptop-html/* .
# RUN rm -rf cryptop-html cryptop.zip
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
# EXPOSE 80 
# ----------------
# FROM  centos:latest
# LABEL Maintainer="suraj@gmail.com"
# RUN cd /etc/yum.repos.d/
# RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
# RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
# RUN yum update -y
# RUN yum install httpd -y
# ADD https://github.com/Krishnamohan-Yerrabilli/static-site/archive/refs/heads/main.zip /var/www/html/
# WORKDIR /var/www/html/
# RUN yum install zip unzip -y
# RUN unzip main.zip
# RUN cp -rvf static-site-main/* .
# RUN rm -rf static-site-main main.zip
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
# EXPOSE 80 22




