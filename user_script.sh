#!/bin/bash -ex

# Installing Node.js with Apt using NodeSource PPA

sudo apt update

sudo apt upgrade -y

exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1
cd ~

curl -sL https://deb.nodesource.com/setup_16.x -o /tmp/nodesource_setup.sh

sudo bash /tmp/nodesource_setup.sh

sudo apt install nodejs

#install git
sudo apt install git -y
cd /home/ubuntu

# get source code from github
git clone https://github.com/felixyu9/auto-scaling-nodejs-app
#get in project dir
cd auto-scaling-nodejs-app
#give permission
sudo chmod -R 755 .
#install node module
npm install
# start the app
node app.js > app.out.log 2> app.err.log < /dev/null &