#! /bin/bash
echo Dev envirionment: $DEPLOYMENT_ENVIRONMENT

if [ 'test' = "$DEPLOYMENT_ENVIRONMENT" ]; then
	echo "REMOVING DATA NOT USED IN THIS DEPLOYMENT ENVIRONMENT!!"
	echo "Found test as deployment environment, removing prod data.."
	rm -rf /mnt/data/basicstorage/divaProdSystem
elif [ 'prod' = "$DEPLOYMENT_ENVIRONMENT" ]; then
	echo "REMOVING DATA NOT USED IN THIS DEPLOYMENT ENVIRONMENT!!"
	echo "Found prod as deployment environment, removing test data.."
	rm -rf /mnt/data/basicstorage/divaTestSystem
else
	echo "No known deployment environment found, leaving test and prod data.."
fi

echo Starting tomcat...

catalina.sh run