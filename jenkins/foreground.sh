#!/bin/bash

git clone https://anilkumle1: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@github.com/anilkumle1/java.git

cp -r java/jenkins_home /var/lib/docker/volumes
sleep 2
chown -R ubuntu:ubuntu /var/lib/docker/volumes/jenkins_home/_data

docker login -u anilkumle -p Athrz_lgn@123

docker run -itd -p 8080:8080 -v jenkins_home:/var/jenkins_home \
     -v /var/run/docker.sock:/var/run/docker.sock \
       -v $(which docker):/usr/bin/docker anilkumle/jenkins:aug23

echo "jenkins is up and running"
