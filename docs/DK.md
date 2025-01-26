Docker Commands Cheat Sheet
==========================

### General Docker Commands
---------------

* `docker -d`: Start the Docker daemon
* `docker --help`: Get help with Docker
* `docker info`: Display system-wide information
* `docker ps`: List running containers
* `docker ps -a`: List all containers
* `docker images`: List all images
* `docker exec -it <container> bash`: Connect to a container
* `docker logs <container>`: Show a container's console log
* `docker stop <container>`: Stop a container
* `docker restart <container>`: Restart a container
* `docker rm <container>`: Remove a container
* `docker port <container>`: Show a container's port mapping
* `docker top <container>`: List processes in a container
* `docker kill <container>`: Kill a container

### Docker File Commands
-------------------

* `FROM`: Specifies the base image for the build
* `RUN`: Executes a command inside the container during build time
* `CMD`: Specifies the default command to run when the container starts
* `EXPOSE`: Informs Docker that the container listens on specific network ports at runtime
* `ENV`: Sets environment variables inside the container
* `COPY`: Copies files or directories from the build context into the container
* `ADD`: Similar to COPY but supports additional features like URL retrieval and decompression
* `WORKDIR`: Sets the working directory for subsequent instructions
* `ARG`: Defines variables that users can pass at build-time to the builder with the docker build command
* `ENTRYPOINT`: Configures a container to run as an executable
* `VOLUME`: Creates a mount point and assigns it to a specified volume
* `USER`: Sets the user or UID to use when running the image
* `LABEL`: Adds metadata to an image in the form of key-value pairs
* `ONBUILD`: Configures commands to run when the image is used as the base for another build

### Docker Login Commands
------------------

* `docker login`: Log in to a Registry
* `docker logout`: Logout from a Registry

### Docker Network Commands
----------------------

* `docker network create -d overlay MyOverlayNetwork`: Create an overlay network
* `docker network create -d bridge MyBridgeNetwork`: Create a bridge network
* `docker network rm MyOverlayNetwork`: Remove a network
* `docker network ls`: List networks
* `docker network inspect MyOverlayNetwork`: Get information about a network
* `docker network connect MyOverlayNetwork nginx`: Connect a running container to a network
* `docker container run -it -d --network=MyOverlayNetwork nginx`: Connect a container to a network when it starts
* `docker network disconnect MyOverlayNetwork nginx`: Disconnect a container from a network

### Docker Volume Commands
---------------------

* `docker volume create mydata`: Create a named volume
* `docker volume ls`: List volumes
* `docker volume inspect mydata`: Get information about a volume
* `docker volume rm mydata`: Remove a volume
* `docker volume prune`: Remove all unused volumes

### Docker Image Management Commands
------------------------------

* `docker build -t <image_name>`: Build an image
* `docker image pull nginx`: Pull an image from Docker Hub
* `docker image pull <Name of The Image>:<Tag>`: Pull an image with a specific tag

### Docker Hub Commands
-----------------

* `docker login -u <username>`: Log in to Docker Hub
* `docker push <username>/<image_name>`: Publish an image to Docker Hub
* `docker search <image_name>`: Search for an image on Docker Hub
* `docker pull <image_name>`: Pull an image from Docker Hub

### Docker Container Commands
-------------------------

* `docker run --name <container_name> <image_name>`: Create and run a container
* `docker run -p <host_port>:<container_port> <image_name>`: Run a container with port mapping
* `docker run -d <image_name>`: Run a container in the background
* `docker start|stop <container_name>`: Start or stop a container
* `docker rm <container_name>`: Remove a container
* `docker exec -it <container_name> sh`: Open a shell inside a running container