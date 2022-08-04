FROM centos
RUN yum install git httpd -y
RUN sudo systemctl enable httpd
RUN git clone https://github.com/psdike/devops_day5.git
RUN mv devops_day5/* /var/www/html/
