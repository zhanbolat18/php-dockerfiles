#!/bin/sh

sed -i '/xdebug\.remote_host/d' /usr/local/etc/php/conf.d/php.ini
echo "xdebug.remote_host=$(hostname -I)" >> /usr/local/etc/php/conf.d/php.ini

exec "${@}"

