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