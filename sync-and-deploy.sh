#!/bin/bash

set -e

cd /home/nei/website

echo "checking github for changes..."
git pull --ff-only origin main

echo "publishing newest version..."
./publish-site.sh

echo "sync and deploy complete."
