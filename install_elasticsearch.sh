#!/bin/bash

# Update package lists to ensure we get the latest versions
sudo apt-get update -y

# Install required dependencies (apt-transport-https allows secure downloads)
sudo apt-get install -y apt-transport-https wget

# Import the Elasticsearch public key for security verification
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo gpg --dearmor -o /usr/share/keyrings/elasticsearch-keyring.gpg

# Add the official Elasticsearch repository
echo "deb [signed-by=/usr/share/keyrings/elasticsearch-keyring.gpg] https://artifacts.elastic.co/packages/8.x/apt stable main" | sudo tee /etc/apt/sources.list.d/elastic-8.x.list

# Update package lists again to recognize the new repository
sudo apt-get update -y

# Install Elasticsearch
sudo apt-get install -y elasticsearch

# Enable Elasticsearch service so it starts automatically on reboot
sudo systemctl daemon-reload
sudo systemctl enable elasticsearch.service

# Start Elasticsearch service
sudo systemctl start elasticsearch.service

# Verify if Elasticsearch is running
sudo systemctl status elasticsearch.service

# Test Elasticsearch by making a simple request to see if it responds
curl -X GET "localhost:9200/"
