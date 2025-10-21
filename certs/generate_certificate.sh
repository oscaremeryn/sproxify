#!/bin/bash

rm -v spotify.key spotify.crt

openssl req -x509 -nodes -days 3650 \
  -newkey rsa:2048 \
  -keyout spotify.key \
  -out spotify.crt \
  -config openssl-spotify.cnf

openssl x509 -in spotify.crt -noout -text | grep -A1 "Subject Alternative Name" 

