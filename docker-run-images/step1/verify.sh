#!/bin/bash

docker ps | grep '5200' && docker ps | grep '8300'
# if docker ps | grep "new-docker"; then exit 1; fi
