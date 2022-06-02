#!/bin/bash
sudo apt install -y zsh
git clone git@github.com:robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
chsh -s /bin/zsh
cd
ln -sf MyConf/.zshrc .zshrc
