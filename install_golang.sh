#!/bin/bash
file=go1.17.linux-amd64.tar.gz
go_ver=https://golang.google.cn/dl/$file
if [ ! -f "/tmp/$file" ]; then
  wget "$go_ver" -O "/tmp/$file"
fi
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf "/tmp/$file"
echo 'export PATH="$PATH:/usr/local/go/bin"' >> $HOME/.profile
