#!/bin/sh
sudo apt update
sudo apt install -y vim
mkdir -p ~/.vim/autoload
git clone git@github.com:junegunn/vim-plug.git ~/.vim/autoload/plug.vim
