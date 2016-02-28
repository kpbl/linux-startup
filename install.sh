#!/bin/bash
echo "####starting install####"
echo ""
echo "####updateing dependencies ####"
apt-get update && apt-get upgrade
echo ""
echo ""
echo "####installing vim ####"
apt-get install -y vim
echo ""
echo ""
echo "####installing screen ####"
apt-get install -y screen
echo ""
echo ""
echo "####installing sudo ####"
apt-get install -y sudo
echo ""
echo ""
echo "####installing htop ####"
apt-get install -y htop
echo ""
echo ""
echo "####installing git ####"
apt-get install -y git
echo ""
echo ""
echo "####installing wget ####"
apt-get install -y wget
echo ""
echo ""
echo "####installing curl ####"
apt-get install -y curl
echo ""
echo ""
echo "####installing openssl ####"
apt-get install -y openssl
echo ""
echo ""
while true
  do
    echo "Installing Build Tools [y|n]?"
    read choice
    if [ "$choice" == "y" ]; then
      apt-get install -y build-essential
      break
    elif [ "$choice" == "n" ]; then
      break
    fi
  done
echo ""
echo ""
while true
  do
    echo "Installing Webserver(Apache2, MySQL and PHP) [y|n]?"
    read choice
    if [ "$choice" == "y" ]; then
      apt-get install apache2 libapache2-mod-php5 php5 php5-mysql mysql-server
      mysql_secure_installation
      break
    elif [ "$choice" == "n" ]; then
      break
    fi
  done
echo ""
echo ""
while true
  do
    echo "Installing Perl [y|n]?"
    read choice
    if [ "$choice" == "y" ]; then
      apt-get install -y perl
      break
    elif [ "$choice" == "n" ]; then
      break
    fi
  done
echo ""
echo ""
while true
  do
    echo "Installing Python [y|n]?"
    read choice
    if [ "$choice" == "y" ]; then
      apt-get install -y python
      break
    elif [ "$choice" == "n" ]; then
      break
    fi
  done
echo ""
echo ""
while true
  do
    echo "Installing node.js [y|n]?"
    read choice
    if [ "$choice" == "y" ]; then
      curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
      apt-get install -y nodejs
      break
    elif [ "$choice" == "n" ]; then
      break
    fi
  done
echo ""
echo ""
echo "####finished install####"
