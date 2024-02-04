FROM tomcat:8.5.50-jdk8-openjdk
MAINTAINER Your-Name-Here
COPY ./<war_file_name>.war /usr/local/tomcat/webapps

