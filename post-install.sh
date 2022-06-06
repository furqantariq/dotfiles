#!/bin/sh

echo "Post installation setup..."

printf "updating... "
apt update -y && echo "OK"

print "Upgrading... "
apt dist-upgrade -y && echo "OK"

printf "Installing required tools ..."
apt install -y git zsh && build-essential && echo "OK"

printf "Installing essential tools ..."
apt install -y netcat && echo "OK"

print "Installing fun tools ..."
apt install -y cowsay toilet figlet fortunes boxes linuxlogo cmatrix && echo "OK"
