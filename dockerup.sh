#!/bin/bash


ip_address=$(curl https://ipinfo.io/ip)

echo $ip_address

cd reverse-proxy

sed -i -e 's|IP_ADDRESS|'$ip_address'|g' default.conf


cd ..
docker-compose up -d