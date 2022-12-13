ARG CORA_DOCKER_VERSION
FROM cora-docker-tomcat:${CORA_DOCKER_VERSION}

COPY /diva*.war /usr/local/tomcat/webapps/diva.war
COPY /diva.xml /usr/local/tomcat/conf/Catalina/localhost/diva.xml 

COPY /*.properties /usr/local/tomcat/lib/

COPY files/fedoraKeystore.jks /usr/local/tomcat/fedoraKeystore.jks

ENV JAVA_OPTS="-Djavax.net.ssl.trustStore=/usr/local/tomcat/fedoraKeystore.jks -Djavax.net.ssl.trustStorePassword=changeit"
