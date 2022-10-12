# FROM ubuntu 
# RUN apt update -y
# RUN apt install nginx -y
# # RUN mkdir -p /var/www/html/site1
# # COPY index.html /var/www/html/site1/
# # COPY site1.conf /etc/nginx/sites-enabled/site1.conf
# COPY ecomm /var/www/html/
# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]
# #CMD ["tail -f" , "/dev/null"]
##


FROM ubuntu
RUN apt update -y && apt install default-jdk -y
# RUN wget https://archive.apache.org/dist/tomcat/tomcat-10/v10.0.8/bin/apache-tomcat-10.0.8.tar.gz
RUN mkdir -p /opt/tomcat
# RUN tar xzvf apache-tomcat-10.0.8.tar.gz
# RUN mv apache-tomcat-10.0.8/ /opt/tomcat
ADD apache-tomcat-10.0.8.tar.gz /opt/tomcat
COPY ecomm-master /opt/tomcat/apache-tomcat-10.0.8/webapps/ROOT/
EXPOSE 8080
CMD ["/opt/tomcat/apache-tomcat-10.0.8/bin/catalina.sh", "run" ]




