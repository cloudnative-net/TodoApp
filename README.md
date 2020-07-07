# Why this repository? 

This repository houses a .NET Core 3.1 Web API built to teach Cloud native app development. Along the way, we also learn sustainable development practices

# Patterns and practices being taught

1. Building an application that follows [The Twelve-factor](https://12factor.net/) principles
2. Packaged as a Docker container
3. Hosted on AWS (to begin with) with infrastructure provisioned through code (IaC)
4. Continuous integration, Continuous deployment and delivery (CI CD) using Github Actions

## Distributed, loosely coupled systems architecture

Modern, cloud native applications do not exist on an island. An application exists as part of an ecosystem to solve a business problem.
We will also learn how to build applications that integrate with the ecosystem in a loosely coupled manner using an event-driven architecture

## Curious?

Reach out if this is of interest! 

## Packaging this application as a Docker image

1. Run the following command
```bash
cd src/TodoApp.Api
```

2. Next, build the image 
```bash
docker build -t todoapi .
```

3. Check the built up image
```bash
docker image ls
# should show todoapi with tag latest
```

4. Run a container from this image. The option -p specifies host port - container port mapping. In this case, port 5000 on host will bind to port 80 on the container

```bash
docker run -p 5000:80 todoapi
```

You can now access the api by browsing to http://localhost:5000/todos

Back on the command prompt, press CTRL+C to stop the container
