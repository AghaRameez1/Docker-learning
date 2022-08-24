#!/bin/bash


ip_address=$(curl https://ipinfo.io/ip)

echo $ip_address

cd reverse-proxy

sed -i 's/IP_ADDRESS/\1 $ip_address/' default.conf


cd ..
docker-compose up -d