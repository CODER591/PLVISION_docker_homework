#!/bin/sh

# Check for the necessary arguments
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <server-hostname> <server-port>"
  exit 1
fi

RED='\033[1;31m'
GREEN='\033[1;32m'
NC='\033[0m'  # no color

SERVER_HOSTNAME=$1
SERVER_PORT=$2

echo "Connecting to netcat server at $SERVER_HOSTNAME:$SERVER_PORT..."
## attempt netcat connection, timeout of 2
if (nc -v -z -w 2 $SERVER_HOSTNAME $SERVER_PORT)
then
    echo -e "nc ${SERVER_HOSTNAME} ${SERVER_PORT} ... ${GREEN}ok${NC}"
else
    echo -e "nc ${SERVER_HOSTNAME} ${SERVER_PORT} ... ${RED}[FAIL]${NC}"
fi
