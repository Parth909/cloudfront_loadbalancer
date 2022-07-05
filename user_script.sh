#!/bin/bash

TIMEFORMAT='===> Elaspsed time %R seconds'

time {

# Installing Node.js with Apt using NodeSource PPA

sudo apt update

# sudo apt upgrade -y :- Causes the script to quit after this command

sudo apt install curl -y

cd ~

echo "===> Installing Node 16.x"
curl -sL https://deb.nodesource.com/setup_16.x -o /tmp/nodesource_setup.sh

sudo bash /tmp/nodesource_setup.sh

sudo apt install nodejs

#install git
sudo apt install git -y
cd /home/ubuntu

echo "===> Cloning the app"
# get source code from github
git clone https://github.com/felixyu9/auto-scaling-nodejs-app
#get in project dir
cd auto-scaling-nodejs-app
#give permission
sudo chmod -R 755 .
#install node module
npm install

echo "===> Starting the app"
# start the app
node app.js > app.out.log 2> app.err.log < /dev/null &

}