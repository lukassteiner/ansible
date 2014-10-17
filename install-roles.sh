#!/bin/bash
BASE_DIR="/etc/ansible/roles/"
INSTALL_PATH="/usr/local/etc/ansible/roles/"

roles=(
    "MaximeThoonsen.php5-xdebug",
    "bennojoy.mysql",
    "pbuyle.php-pecl"
  )

for i in "${roles[@]}"
do
    :
    if [ ! -d "$INSTALL_PATH$i" ]; then
        ansible-galaxy install -p $INSTALL_PATH $i
    fi
done