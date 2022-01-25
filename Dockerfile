  FROM tomcat:10
  LABEL maintainer="joel_tf_92@hotmail.com"

  ARG WAR_FILE=target/*.war

  ADD ${WAR_FILE} /usr/local/tomcat/webapps/

  EXPOSE 8090
  CMD ["catalina.sh", "run"]