#!/bin/bash

# Stop and remove existing Docker container
sudo docker stop shoumtech || true
sudo docker rm shoumtech || true

#Login to pull docker image
sudo docker login -u shoumtech -p dckr_pat_H9hK8c-zxAHkMFHN9u_vjmkEbvw

# Pull Docker image from Docker Hub
sudo docker pull shoumtech/testpipe_v1:latest

# Run Docker container
sudo docker run -d --name shoumtech -p 8081:8080 shoumtech/testpipe_v1:latest
