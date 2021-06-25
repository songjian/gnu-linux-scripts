#!/bin/bash
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
sudo apt-get update
sudo apt-get install -y gcc make openjdk-8-jdk icedtea-netx
