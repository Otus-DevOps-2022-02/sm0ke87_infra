#!/bin/sh
sudo apt-get update -y
sudo apt-get install apt-transport-https ca-certificates -y
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install ruby-full -y
sudo apt-get install ruby-bundler -y
sudo apt-get install build-essential -y
ruby -v
bundler -v
