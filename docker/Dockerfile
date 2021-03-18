ARG CORA_DOCKER_VERSION
FROM cora-docker-tomcat:${CORA_DOCKER_VERSION}

COPY /storagefiles/cora /mnt/data/basicstorage/cora
COPY /storagefiles/jsClient /mnt/data/basicstorage/jsClient
COPY /storagefiles/diva /mnt/data/basicstorage/diva
COPY /storagefiles/divaTestSystem /mnt/data/basicstorage/divaTestSystem
COPY /storagefiles/divaProdSystem /mnt/data/basicstorage/divaProdSystem

COPY /diva*.war /usr/local/tomcat/webapps/diva.war
COPY /diva.xml /usr/local/tomcat/conf/Catalina/localhost/diva.xml 

COPY /*.properties /usr/local/tomcat/lib/

COPY files/fedoraKeystore.jks /usr/local/tomcat/fedoraKeystore.jks

ENV JAVA_OPTS="-Djavax.net.ssl.trustStore=/usr/local/tomcat/fedoraKeystore.jks -Djavax.net.ssl.trustStorePassword=changeit"

COPY ./entrypoint.sh .
RUN chmod a+x ./entrypoint.sh
CMD  ./entrypoint.sh
