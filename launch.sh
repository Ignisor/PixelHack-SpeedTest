#!/usr/bin/env bash

docker pull adolfintel/speedtest
docker run -d -e MODE=standalone -p 80:80 -it adolfintel/speedtest

echo "SpeedTest launched"
IP=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')
echo "Address: http://$IP/"
