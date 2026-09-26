#!/bin/bash

echo "Downloading website from S3..."
aws s3 cp s3://neinei-cloud-lab-2026/index.html /tmp/index.html

echo "Putting website into Apache..."
sudo cp /tmp/index.html /var/www/html/index.html

echo "Deployment complete."
