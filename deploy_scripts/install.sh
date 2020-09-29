#!/usr/bin/env bash
set -e

# update instance
yum -y update

# install general libraries like Java or ImageMagick
yum -y install default-jre ImageMagick

# add nodejs to yum
curl -sL https://rpm.nodesource.com/setup_lts.x | bash -
yum install nodejs -y #default-jre ImageMagick

# install pm2 module globaly
npm install -g pm2
pm2 update

# delete existing bundle
cd /home/ec2-user
rm -rf node