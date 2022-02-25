FROM centos:7
RUN yum install httpd -y && systemctl enable httpd 
COPY index.html /var/www/html
RUN ["httpd","-D","FOREGROUND"]
