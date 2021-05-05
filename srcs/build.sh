#!/bin/bash

docker build -t dockerfile .
docker run --name con_debian -it -p 80:80 -p 443:443 dockerfile
