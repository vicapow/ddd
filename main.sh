#!/bin/bash

mkdir -p tmp

cat > tmp/input.txt

node server.js "$@" &

/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
 --user-data-dir=tmp/ \
 --force-app-mode \
 --window-size=100,100 \
 --app=http://localhost:8080/


# kill the node process before exiting
trap "kill 0" SIGINT SIGTERM EXIT