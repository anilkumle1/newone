
###Jenkins challenge

Write a Jenkins pipeline to CLONE, BUILD and PUSH the docker images to DOCKER-HUB

###NOTE: The build is triggered automatically in the pipeline job.

Clone the repo:

    url: `https://github.com/anilkumle1/jenkins.git`

This repo contains One python applicationa and Dockerfile

  Add the jenkins file and push the code

 Build docker image and push docker images to Dockerhub via pipeline

docker image naming conversion:

 `anilkumle/sample-testing:{anything}`


Required Credentails:

Jenkins:
      username: `admin`     
      password: `admin@123`
Github:
    username:  `anilkumle1`
    password:   `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`

Dockerhub:
    username: `anilkumle`
    password: `Athrz_lgn@123`

Finally!!!!

pull the newly pushed docker image and run the docker image

  use port number 5300 and access the application using below links

WE SHOULD GET IN BROWSER "Web App with Python Flask!"


#### once you have done above steps access image content using this link:

It's also possible to access ports using the top-right navigation in the terminal.
Or we can display the link to that page:

[ACCESS PORTS]({{TRAFFIC_SELECTOR}})
