#!/bin/bash
sudo apt install -y fish

git clone git@github.com:oh-my-fish/oh-my-fish /tmp/oh-my-fish
cd /tmp/oh-my-fish
bin/install -y --offline
