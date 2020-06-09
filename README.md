# How to run this project

Run the following to check if you have Docker installed, you can find the instructions for installing Docker [here](https://docs.docker.com/get-docker/)

```
> docker version
Client: Docker Engine - Community
 Version:           19.03.8
 API version:       1.40
 Go version:        go1.12.17
 Git commit:        afacb8b
 Built:             Wed Mar 11 01:21:11 2020
 OS/Arch:           darwin/amd64
 Experimental:      false
```

The project uses two images to run:
1. `web` - which hosts the Rails application
2. `db` - which hosts the MySQL database

All you need to do to run the project is run the following commands:
```
> docker-compose up -d # will run the containers in detached mode
> docker-compose exec web bundle exec rails db:setup
```
After, visit http://localhost:3000 and you should see the `Welcome to Smokejumpers` message.

 # Commands
 The following are the commands I ran during the presentation

 ## For interacting with Docker Engine:
 ```
 # Get container names
 curl --unix-socket /var/run/docker.sock http:/v1.24/containers/json | jq '.[] | { Names }'

 # Get images id
 curl --unix-socket /var/run/docker.sock http:/v1.24/images/json | jq '.[] | { Id }'
 ```
 
## For getting the available routes in a Rails project
```
docker-compose exec web bundle exec rails routes

# OR, if you're a collaborator in Heroku application

heroku run rails routes -a smokejumperss
```

## For running Rails console
```
docker-compose exec web bundle exec rails console

# OR, if you have access to the Heroku application

heroku run rails console -a smokejumperss
```

