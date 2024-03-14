#!/bin/bash
# add your site and github token
while true; do

     github-subdomains -d test.com -e -t {token} | grep -Eo '(\b(?:https?:\/\/)?(?:www\.)?[[:alnum:]-]+\.[[:alpha:].]{2,})'  |  grep '\.dyson\.[a-z.]*$' | sort -u | anew github_subdomains

    sleep 24h
done
