# Docker Drupal

Creates a Drupal instance running on a Php docker container and a MySQL docker
container.

The database host is ```db``` ran on port ```3306```. The user is
```drupaluser``` and the password is ```password12345```.

The web service runs on port ```8080``` so the site is accessible at
http://localhost:8080/.

Run the docker compose once to start the containers (```docker-compose up -d```).
Set up the initial drupal site with the above info for the database.
When the site is finished setting up, copy the containers directly to local machine (```docker cp drupal-docker_web_1:/var/www/drupal ./drupal```).
Then edit the drupal volume in the docker-compose.yml to use the local machine path
