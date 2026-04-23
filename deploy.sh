#!/bin/bash
cd ~/devops-webapp-1 || exit

echo "Pulling latest code..."
git pull origin main

echo "Restarting containers..."
docker-compose down
docker-compose up -d

echo "Deployment complete 🚀"
