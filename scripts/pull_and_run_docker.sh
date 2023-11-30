#!/bin/bash

# Stop and remove existing Docker container
sudo docker stop testpipe_container || true
sudo docker rm testpipe_container || true

#Login to pull docker image
sudo docker login -u shoumtech -p dckr_pat_H9hK8c-zxAHkMFHN9u_vjmkEbvw

# Pull Docker image from Docker Hub
sudo docker pull shoumtech/testpipe_v1:latest

# Run Docker container
sudo docker run -d --name testpipe_container -p 8081:8080 shoumtech/testpipe_v1:latest
