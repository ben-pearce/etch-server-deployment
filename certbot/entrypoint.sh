#! /bin/sh
echo "0 0,12 * * * certbot renew" > /etc/crontabs/root
crond -f -l0 -L/dev/stdout