#!/bin/sh
apt-get update -y
apt-get install apt-transport-https ca-certificates -y
apt-get update -y
apt-get upgrade -y
apt-get install ruby-full -y
apt-get install ruby-bundler -y
apt-get install build-essential -y
ruby -v
bundler -v
