# Docker Drupal

Creates a Drupal instance running on a Drupal docker container and a MySQL
docker container. The Drupal docker container is a local container built by the
image in https://github.com/bobby-saul/drupal-image.

The database host is `db` ran on port `3306`. The user is `user` and the
password is `password123`.

The web service runs on port `8080` so the site is accessible at
http://localhost:8080/.

Start the docker containers
```
docker-compose up -d
```

To get a shell into the drupal container run:
```
docker exec -ti drupal-docker-web-1 /bin/bash
```

Get the logs of containers:
```
docker logs drupal-docker-web-1
docker logs drupal-docker-drupal-site-mysql-1
```