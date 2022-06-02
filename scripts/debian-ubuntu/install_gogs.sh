#!/bin/bash
sudo useradd git -m
sudo -u postgres psql -c "create user gogs with password 'gogs';"
sudo -u postgres psql -c "create database gogs owner gogs;"
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE gogs TO gogs;"
sudo -u git mkdir -p /home/git/gogs-repositories
sudo -u git wget -P /tmp https://dl.gogs.io/0.12.3/gogs_0.12.3_linux_amd64.tar.gz
sudo -u git tar -xzvf /tmp/gogs_0.12.3_linux_amd64.tar.gz -C /home/git
sudo ln -s /home/git/gogs/scripts/systemd/gogs.service /etc/systemd/system/
sudo systemctl enable gogs
sudo systemctl start gogs
