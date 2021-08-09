#!/bin/bash
sudo apt install -y python3 python3-pip
. ~/.profile
. ~/.bashrc
. ~/.bash_profile
pip install -i https://mirrors.ustc.edu.cn/pypi/web/simple pip -U
pip config set global.index-url https://mirrors.ustc.edu.cn/pypi/web/simple
pip install --upgrade pip
