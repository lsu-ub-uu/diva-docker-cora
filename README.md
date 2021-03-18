# How to start diva-docker-cora on different environments

Since there is different configuration for each environment we need to tell diva-docker-cora 
to start with the correct data for each environment.

To set the environment use **DEPLOYMENT_ENVIRONMENT** which can be either **test** or **prod**.

## To set *test* environment:

docker run -d --name dockerName **-e DEPLOYMENT_ENVIRONMENT=test** dockerImage
	
## To set *prod* environment:

docker run -d --name dockerName **-e DEPLOYMENT_ENVIRONMENT=prod** dockerImage

 