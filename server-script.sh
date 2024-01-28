#! /bin/bash

sudo yum install java-1.8.0-openjdk-devel -y
sudo yum install git -y
sudo yum install maven -y

if [ -d "addressbook" ]
then
   echo "repo is already cloned and exists"
   cd /home/ec2-user/addressbook
   git checkout main
   git pull origin main
else
   git clone https://github.com/kart3120/addressbook.git
   git checkout main
fi

mvn package
