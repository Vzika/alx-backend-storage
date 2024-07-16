#!/bin/bash

# Add the MongoDB GPG key
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -

# Create the MongoDB source list file
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list

# Update the package list
sudo apt-get update

# Install MongoDB packages
sudo apt-get install -y mongodb-org

# Check the MongoDB service status
sudo service mongod status

# Verify the MongoDB installation
mongo --version

# Install the PyMongo library for Python
pip3 install pymongo

# Verify the PyMongo installation in Python
python3 -c "import pymongo; print(pymongo.__version__)"

