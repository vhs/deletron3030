#!/bin/sh

if [ ! -f .env ] ; then
 echo "Missing .env file"
 exit
fi

docker rmi deletron3030
docker build -t deletron3030 .
docker kill deletron3030
docker rm deletron3030
docker run -d --name deletron3030 deletron3030
