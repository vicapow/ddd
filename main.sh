#!/bin/bash

mkdir -p tmp

cat > tmp/input.txt

node server.js "$@" &

/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
 --user-data-dir=tmp/ \
 --force-app-mode \
 --window-size=500,500 \
 --app=http://localhost:9081/


# kill the node process before exiting
trap "kill 0" SIGINT SIGTERM EXIT