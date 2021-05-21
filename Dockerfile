FROM centos:7
RUN yum update
COPY ./index.html /var/www/html/
EXPOSE 80
CMD apachectl -D FOREGROUND
# From tomcat:8-jre8 
# Take the war and copy to webapps of tomcat
# COPY target/*.war /usr/local/tomcat/webapps/dockeransible.war
