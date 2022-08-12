
Deployment:

You can use the kubectl command to deploy a test application

Use any one below sample docker images

### Sample docker Images:


      `1. nginx:latest`

      or

      `2. gcr.io/google-samples/hello-app:1.0`

Next, expose the web deployment as a Kubernetes Service

specifying a static port where it will be accessible with type=NodePort and

` for nginx image use port 80`

  `for gcr image use port 8080`


### once you have done above steps access image content using this link:


[ACCESS NGINX]({{TRAFFIC_HOST1_80}})

It's also possible to access ports using the top-right navigation in the terminal.
Or we can display the link to that page:

[ACCESS PORTS]({{TRAFFIC_SELECTOR}})
