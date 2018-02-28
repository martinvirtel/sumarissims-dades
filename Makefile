
SHELL := /bin/bash

include config.makefile

build:
	cd $(BUILDDIR) ; docker build -t $(IMAGENAME) . 

start:
	mkdir -p work ; \
	docker run -it --rm -p 8888:8888 \
		-e GEN_CERT=yes \
		-e GRANT_SUDO=yes \
		-e NB_UID=$$(id -u)\
		-e NB_GID=$$(id -g)\
		-u root \
		--name $(CONTAINERNAME) \
		-v $$(pwd)/work:/home/jovyan/work \
		-v $$(pwd)/environment:/envs/local \
		$(IMAGENAME)


#		-v $$(pwd)/site-packages:/opt/conda/lib/python3.6/site-packages 
#
#
fargate-logs:
	xdg-open 'https://console.aws.amazon.com/cloudwatch/home?region=us-east-1#logStream:group=/ecs/jupyter-task-definitien'


