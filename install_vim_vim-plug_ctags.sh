#!/bin/bash
sudo apt update
sudo apt install -y vim universal-ctags
git clone git@github.com:junegunn/vim-plug.git /tmp/vim-plug
mkdir -p ~/.vim/autoload
cp /tmp/vim-plug/plug.vim ~/.vim/autoload/plug.vim 
