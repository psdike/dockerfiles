FROM centos
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

RUN yum install git httpd -y
CMD ["service httpd start"]
RUN git clone https://github.com/psdike/devops_day5.git
RUN mv devops_day5/* /var/www/html/

