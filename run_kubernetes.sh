#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=nyeve/flaskapp

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run flaskapp --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get nodes
kubectl get pods 

#wait for 60s
sleep 60s 

# Step 4:
# Forward the container port to a host
kubectl port-forward flaskapp 8000:80