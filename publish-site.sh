#!/bin/bash

set -e

echo "uploading git project website to S3..."
aws s3 cp /home/nei/website/index.html s3://neinei-cloud-lab-2026/index.html

echo "deploying website to apache..."
/home/nei/deploy-site.sh

echo "checking live website..."
curl -s http://localhost | grep "<h1>"

echo "publish complete."
