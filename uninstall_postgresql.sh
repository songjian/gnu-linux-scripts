#!/bin/bash
sudo apt purge -y postgresql-client-10
sudo rm -f /etc/apt/sources.list.d/pgdg.list
