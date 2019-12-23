#!/bin/bash
echo $PASSWORD | openconnect --protocol=${PROTOCOL:-gp} $SERVER --user=$USER --script-tun --script="ocproxy -D 0.0.0.0:9070" --no-dtls
