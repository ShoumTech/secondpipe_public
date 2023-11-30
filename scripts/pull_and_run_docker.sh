#!/bin/bash

# Stop and remove existing Docker container
sudo docker stop ${{ env.DOCKER_CONTAINER_NAME }} || true
sudo docker rm ${{ env.DOCKER_CONTAINER_NAME }} || true

#Login to pull docker image
sudo docker login -u ${{ secrets.DOCKERHUB_USERNAME }} -p ${{ secrets.DOCKERHUB_TOKEN }}

# Pull Docker image from Docker Hub
sudo docker pull ${{ secrets.DOCKERHUB_USERNAME }}/${{ env.DOCKER_IMAGE }}

# Run Docker container
sudo docker run -d --name ${{ env.DOCKER_CONTAINER_NAME }} -p 8081:8080 ${{ secrets.DOCKERHUB_USERNAME }}/${{ env.DOCKER_IMAGE }}
