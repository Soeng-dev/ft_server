#!/bin/bash

docker build -t $1 .
docker run --name $2 -it -p 80:80 -p 443:443 $1 
