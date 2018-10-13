#!/bin/bash
#Wrapper script that builds the docker image and runs it.

docker build -t wiki .
docker run -p 8000:8000 -v docs:/docs:rw wiki serve &
sleep 3;
open http://localhost:8000
