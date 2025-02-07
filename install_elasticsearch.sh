#!/bin/bash

# Update package lists
sudo apt-get update -y

# Install prerequisites
sudo apt-get install -y apt-transport-https wget

# Import Elasticsearch PGP key
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo gpg --dearmor -o /usr/share/keyrings/elasticsearch-keyring.gpg

# Add Elasticsearch repository
echo "deb [signed-by=/usr/share/keyrings/elasticsearch-keyring.gpg] https://artifacts.elastic.co/packages/8.x/apt stable main" | sudo tee /etc/apt/sources.list.d/elastic-8.x.list

# Update package lists again
sudo apt-get update -y

# Install Elasticsearch
sudo apt-get install -y elasticsearch

# Enable and start Elasticsearch service
sudo systemctl daemon-reload
sudo systemctl enable elasticsearch.service
sudo systemctl start elasticsearch.service

# Verify installation
sudo systemctl status elasticsearch.service

# Test if Elasticsearch is running
curl -X GET "localhost:9200/"
