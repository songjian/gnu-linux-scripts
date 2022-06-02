#!/bin/bash
pip install jupyter
jupyter notebook password
mkdir -p ~/workspace_python/jupyter
cat <<\EOF | sudo tee /etc/systemd/system/jupyter.service
[Unit]
Description=Jupyter Notebook
After=network.target
[Service]
Type=simple
ExecStart=/home/sj/.local/bin/jupyter notebook --ip=0.0.0.0 --notebook-dir=~/workspace_python/jupyter --no-browser
User=sj
Group=sj
WorkingDirectory=/home/sj/
Restart=always
RestartSec=10
[Install]
WantedBy=multi-user.target
EOF
sudo systemctl enable jupyter
sudo systemctl start jupyter
