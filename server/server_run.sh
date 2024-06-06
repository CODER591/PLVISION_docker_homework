#!/bin/sh

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <server-port>"
  exit 1
fi

RED='\033[1;31m'
GREEN='\033[1;32m'
NC='\033[0m'  # no color

PORT=$1

echo -e "${GREEN}Launching server... on ${PORT} port${NC}"

#With -k option, it will listen for eternity.
nc -v -k -l $PORT

echo "Waiting for 30 seconds before exiting."
sleep 30s
#nc -l $PORT | xargs echo
