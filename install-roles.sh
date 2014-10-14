#!/bin/bash
BASE_DIR="/etc/ansible/roles/"
INSTALL_PATH="/usr/local/etc/ansible/roles/"

roles=(
    "andyceo.preconf",
    "andyceo.apache"
  )

for i in "${roles[@]}"
do
    :
    if [ ! -d "$INSTALL_PATH$i" ]; then
        ansible-galaxy install -p $INSTALL_PATH $i
    fi
done