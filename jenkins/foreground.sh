#!/bin/bash

git clone https://anilkumle1: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@github.com/anilkumle1/java.git

cp -r java/jenkins_home /var/lib/docker/volumes
sleep 2
chown -R ubuntu:ubuntu /var/lib/docker/volumes/jenkins_home

docker login -u anilkumle -p Athrz_lgn@123

cd /var/lib/docker/volumes && chown -R ubuntu:ubuntu jenkins_home

docker run -itd -p 8080:8080 -v jenkins_home:/var/jenkins_home \
     -v /var/run/docker.sock:/var/run/docker.sock \
       -v $(which docker):/usr/bin/docker anilkumle/jenkins:aug23

echo "jenkins is up and running"
