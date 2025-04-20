#!/bin/bash
cd /var/www/portfolio
echo "Deploy started at $(date)" >> deploy.log
git pull origin main
#npm install
#npm run build
sudo systemctl reload nginx