FROM centos:latest
MAINTAINER TenzinDocker
RUN yum install httpd git && git clone https://github.com/TenzinGithub/mydockerRepos.git /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]