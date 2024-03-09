Why Setup with Containers? 
================

Containers package all application dependencies, including python, pip, bower, curl into a single image. So the developer does not have to set up all of these 
dependencies manually. They also do not have to worry about solving dependency issues specific to their operating system. 

Requirements
===================================
1. [Docker Desktop 4.27.2] (https://www.docker.com/products/docker-desktop/)

Installation Instructions
===================================
`docker-compose up -d --build`

Verify by opening http://localhost:8000/ , and you would see a website like the following:

<img
  alt="GraphSpace Website"
  src="docker_graphspace_website.png"
  style="max-width: 700px">

Troubleshooting
===============
Run `docker ps` and verify that the web and the db containers are running.
```
CONTAINER ID   IMAGE                 COMMAND                  CREATED          STATUS                    PORTS                    NAMES
16c83f15168c   web:latest            "python manage.py ru…"   11 minutes ago   Up 11 minutes             0.0.0.0:8000->8000/tcp   graphspace-web-1
bbc75a219bc3   postgres:9.6-alpine   "docker-entrypoint.s…"   11 minutes ago   Up 11 minutes (healthy)   0.0.0.0:5432->5432/tcp   graphspace-db-1
➜```