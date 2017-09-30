#!/bin/sh

docker rmi deletron3030
docker build -t deletron3030 .
docker kill deletron3030
docker run -d -p 4000:3000 --name deletron3030 deletron3030
