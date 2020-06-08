#!/bin/bash
echo 'write website:'
read website
apt-get update
apt-get install -y curl
echo 'searching...'
curl http://$website
