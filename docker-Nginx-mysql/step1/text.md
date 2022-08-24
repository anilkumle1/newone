you have to create docker images for webapp, Mysql and NGINX

No need to write the Dockerfile for database it's already there on database folder

Codes are available on `/root`

Write  a dockerfile for Webapp and NGINX

Instruction to write the docker-compose file:

1. DataBase Container:

Container_name should be `database`
Bind the ports for Database "3306 & 33060"
along with Db pass as the enviroment varibale
`MYSQL_ROOT_PASSWORD=movie123`


2. Webapp Container:

Container_name should be  `webapp`
Bind the port for webapp "8080"


3. Nginx Container:

Nginx default port number `80` bind the same port
Write nginx conf file to proxy_pass the webapp traffic

Note: Create a docker network, All the containers should run with in the same network

access Nginx using this link:

[ACCESS NGINX]({{TRAFFIC_HOST1_80}})

-------------------------------------------
Examples:

`Creating a docker-compose.yml:`

Create a docker-compose.yml file to run the webapp and the database. Information on how to create such a file can be found here:

https://docs.docker.com/compose/overview/
https://docs.docker.com/compose/compose-file/

-----------------------------------------------------------

`Hosting a static site using Nginx web server:`

Example nginx conf file:

`server {
        listen 80;

        server_name *****;

        location / {
          proxy_pass http://*******;
          proxy_set_header X-Real-IP $remote_addr;

        }

}`

server name : use `localhost`

Now access Nginx using this link:

[ACCESS NGINX]({{TRAFFIC_HOST1_80}})

It's also possible to access ports using the top-right navigation in the terminal.
Or we can display the link to that page:

[ACCESS PORTS]({{TRAFFIC_SELECTOR}})
