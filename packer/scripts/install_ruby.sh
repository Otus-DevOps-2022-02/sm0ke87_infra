#!/bin/sh
apt-get install apt-transport-https ca-certificates -y
sleep 5
apt-get update -y
sleep 20
apt-get install ruby-full -y
sleep 5
apt-get install ruby-bundler -y
sleep 5
apt-get install build-essential -y
sleep 5
ruby -v
bundler -v
