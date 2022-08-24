#!/bin/bash

git clone https://anilkumle1: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@github.com/anilkumle1/java.git

cp -r java/jenkins_home /var/lib/docker/volumes

chown -R ubuntu:ubutnu /var/lib/docker/volumes/jenkins_home/_data

docker login -u anilkumle -p Athrz_lgn@123

docker run -p 8080:8080 -v jenkins_home:/var/jenkins_home \
     -v /var/run/docker.sock:/var/run/docker.sock \
       -v $(which docker):/usr/bin/docker anilkumle/sample-testing:jenkins

echo "jenkins is up and running"
