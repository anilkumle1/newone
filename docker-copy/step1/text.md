Description:

If you have a already running container that you need to pass a file to how can you send that file to it?

Run instructions:

One method is to use the docker copy command to copy a file to (or from) a running container.

First create a container and run a shell in it.

Note that we are giving the container a name to make it easier to access later.

`docker run -it -d --name=mycontainer  alpine:3.16.0`

Next, copy a file from your host into that containner

Need to copy file which is located on `/root` file name `application.py`

copy `application.py` file to inside the container path `/home`

copy the same file "application.py" from container to specific folder

Need to copy `/root/filesystem/`
