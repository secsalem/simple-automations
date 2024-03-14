#!/bin/bash
# this script will run every 24h using subfinder tool for your target
# TODO : 1 - read from user 
while true; do

     subfinder -d site.com -recursive  -max-time 60 -timeout 10 -silent -t 100 -all -nW -t 10 |  grep '\.site\.[a-z.]*$' | sort -u | anew subfinder

    sleep 24h
done
