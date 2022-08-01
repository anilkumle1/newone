Description:

Run instructions

Run the following commands

docker run -it -d -p 5200:5200 --name=test1 alpine:latest
docker run -it -d --name=test1 -p 8300:8300 node:alpine3.15

Why does this not work?

What can you do to make them both run (there are at least a couple of ways)?
