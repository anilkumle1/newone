#!/bin/bash

stat /root/filesystem/application.py
# grep "Flask" /root/filesyatem/application.py

# docker cp mycontainer:/home/application.py /root/filesystem/ && cat /root/filesystem/application.py
# docker exec -it docker stat /home/application.py
# if docker exec -it docker stat /home/application.py; then exit 1; fi
# if docker ps | grep "new-docker"; then exit 1; fi
