# Flow-2: Create a new Docker Image, Run as Container and Push to Docker Hub

## Pre-requisite Step
- Create your Docker hub account. 
- https://hub.docker.com/
- **Important Note**: In the below listed commands wherever you see **mfaran6301** you can replace with your docker hub account id. 


## Step-1: Run the base Nginx container
docker run --name mynginxdefault -p 3666:80 -d nginx
docker ps

## Step-2: Create Dockerfile and index.html

## Step-3: Build Docker Image & run it
```
docker build -t mfaran6301/mynginx_image1:v1 .
docker run --name mynginx1 -p 3667:80 -d mfaran6301/mynginx_image1:v1

Replace your docker hub account Id
docker build -t <your-docker-hub-id>/mynginx_image1:v1 .
docker run --name mynginx1 -p 80:80 -d <your-docker-hub-id>/mynginx_image1:v1
```

## Step-4: Tag & push the Docker image to docker hub
```
docker images
docker tag mfaran6301/mynginx_image1:v1 mfaran6301/mynginx_image1:v1-release
docker push mfaran6301/mynginx_image1:v1-release

Replace your docker hub account Id
docker tag <your-docker-hub-id>/mynginx_image1:v1 <your-docker-hub-id>/mynginx_image1:v1-release
docker push <your-docker-hub-id>/mynginx_image1:v1-release
```
## Step-5: Verify the same on docker hub
- Login to docker hub and verify the image we have pushed
- Url: https://hub.docker.com/repositories