Answers-scenarios

1. https://github.com/sakha-devops/killercoda.git
SakhaDevops@2022
sakha-devops
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

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


dockerhub:
sakhadevopsdocker
SakhaDevops@2022
dckr_pat_Af2kENZ9cQRpzYiGnNnLzXjD-BU
----------------------------------------

kubectl create deployment web --image=gcr.io/google-samples/hello-app:1.0

kubectl expose deployment web --type=NodePort --port=8080
kubectl get service web

------------------------------------------
Jinkinefile

pipeline{
    agent any
    triggers {
        pollSCM "* * * * *"
    }
    stages{
        stage('git clone'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'github', url: 'https://github.com/anilkumle1/jenkins.git']]])
            }
        }
        stage('build docker image'){
            steps{
                script{
                    sh "sudo docker build -t anilkumle/sample-testing:jenkinscheck ."
                }
            }
        }
        stage('push docker images'){
            steps{
                script{
                    withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpasswd')]) {
                    sh "sudo docker login -u anilkumle -p ${dockerhubpasswd}"
}
                    sh "sudo docker push anilkumle/sample-testing:jenkinscheck"
                }
            }
        }
    }
}
----------------------------------
 cmd : docker run -p 8080:8080 -v jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/usr/bin/docker myjenkins

after cloned jenkins data:
Copy jenkins_home folder to path : /var/lib/docker/volumes/  need to change the owership permission of data which is inside of jnekins_home folder SSSSSSSSfrom root to ubuntu

jenkins Dockerfile:

FROM jenkins/jenkins:lts-jdk11

USER root
RUN apt-get update \
      && apt-get install -y sudo \
      && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

USER jenkins

-----------------------------------

version: '3'
services:
  database:
    image: database:latest
    container_name: database
    environment:
      - MYSQL_ROOT_PASSWORD=movie123
    ports:
      - "3306:3306"
      - "33060:33060"
    networks:
      - mynetwork

  webapp:
    image: webapp:latest
    container_name: webapp
    networks:
      - mynetwork
    ports:
      - "8080:8080"

  nginx:
    image: nginx:test
    container_name: nginx
    networks:
      - mynetwork
    ports:
      - "80:80"



networks:
  mynetwork:
    driver: bridge

  -----------------------------

  server {
    listen 80;

    server_name localhost;

    location / {
      proxy_pass http://localhost:8080;
      proxy_set_header X-Real-IP $remote_addr;

    }
}

--------------------------
Dockerfile:

FROM node:14-alpine
WORKDIR /app
COPY . /app
RUN npm install
EXPOSE 4000
CMD ["npm", "start"]


kubectl run web --image=anilkumle/sample-testing:k8s --env=NAME=punithlas
kubectl expose pod web --type=NodePort --port=4000

-------------------------
