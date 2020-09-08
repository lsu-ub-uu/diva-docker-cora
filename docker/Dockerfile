ARG CORA_DOCKER_VERSION
FROM cora-docker-tomcat:${CORA_DOCKER_VERSION}

COPY /storagefiles/cora /mnt/data/basicstorage/cora
COPY /storagefiles/jsClient /mnt/data/basicstorage/jsClient
COPY /storagefiles/diva /mnt/data/basicstorage/diva

COPY /diva*.war /usr/local/tomcat/webapps/diva.war
COPY /diva.xml /usr/local/tomcat/conf/Catalina/localhost/diva.xml 

COPY /*.properties /usr/local/tomcat/lib/

COPY files/fedoraKeystore.jks /usr/local/tomcat/fedoraKeystore.jks

ENV JAVA_OPTS="-Djavax.net.ssl.trustStore=/usr/local/tomcat/fedoraKeystore.jks -Djavax.net.ssl.trustStorePassword=changeit"

#build with:
#maven build

#start on development with:
#docker run --net=cora--volumes-from gatekeeper -p 8080:8080 --name therest --link gatekeeper:gatekeeper --link solr:solr -d  therest


#start on build server with:
#docker run --net=cora-test --volumes-from gatekeeper-test --name therest-test --link gatekeeper-test:gatekeeper --link solr-test:solr -d  therest

#start on external with:
#docker run --network=cora -p 8280:8080 --name therest --link gatekeeper:gatekeeper --link solr:solr -d  therest

#reomove unused volumes with:
#docker volume rm $(docker volume ls -q)