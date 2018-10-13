#!/bin/bash
#Wrapper script that builds the docker image and runs it.

docker build -t neurowiki .
git clone git@github.com:cdla/neurowiki-docs docs/
docker run -p 4567:4567 -v docs:/docs:rw neurowiki &
open http://localhost:4567