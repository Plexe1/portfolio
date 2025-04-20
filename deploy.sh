#!/bin/bash
cd /var/www/portfolio
echo "Deploy started at $(date)" >> deploy.log
git pull origin main
VERSION=$(git rev-parse --short HEAD)
sed -i "s/{{VERSION}}/$VERSION/g" /var/www/portfolio/index.html
#npm install
#npm run build
sudo systemctl reload nginx