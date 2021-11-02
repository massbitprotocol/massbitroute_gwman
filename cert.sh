#!/bin/bash
_install(){
#apt-add-repository ppa:certbot/certbot
apt install -y certbot
wget https://github.com/joohoi/acme-dns-certbot-joohoi/raw/master/acme-dns-auth.py
##!/usr/bin/env python3
#chmod +x acme-dns-auth.py
#mv acme-dns-auth.py /etc/letsencrypt/
}
_get(){
domain=$1
certbot certonly --manual --manual-auth-hook /etc/letsencrypt/acme-dns-auth.py --preferred-challenges dns --debug-challenges -d \*.$domain -d $domain 
}
_renew(){
certbot renew
}
$@
