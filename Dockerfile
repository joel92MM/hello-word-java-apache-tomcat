  FROM tomcat:9.0
  LABEL maintainer="joel_tf_92@hotmail.com"

  ARG WAR_FILE=target/*.war

  ADD ${WAR_FILE} /usr/local/tomcat/webapps/

  EXPOSE 8390
  CMD ["catalina.sh", "run"]