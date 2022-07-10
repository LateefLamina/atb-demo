echo "Starting deployment script run" && sudo apt-get update && curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - && sudo apt-get install -y nodejs && sudo apt-get install -y npm && sudo apt-get install -y nginx && sudo rm -f /etc/nginx/sites-enabled/default && sudo ln -sf /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default && sudo service nginx restart && sudo npm install -g pm2 && sudo pm2 start -f server.js && sudo pm2 startup systemd && sudo pm2 save && echo "End of script run"
