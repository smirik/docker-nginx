#!/usr/bin/env sh
sed 's|{ENV}|'$SYMFONY_ENV'|g; s|{WWW_DIR}|'$WWW_DIR'|g;' ./symfony.template.conf > ./sites-available/symfony.conf
nginx
