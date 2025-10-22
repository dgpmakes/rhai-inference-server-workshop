#!/bin/sh
# Check AWS CLI is installed
which aws

# If not installed, install it
if [ $? -ne 0 ]; then
    echo "AWS CLI is not installed, installing it..."
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
fi

echo "AWS CLI is installed!"

# Verify installation
aws --version
