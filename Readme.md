![Docker Image CI](https://github.com/chwzr/vapid-dev/workflows/Docker%20Image%20CI/badge.svg)

# VAPID DEV
You dont need NodeJs on your system!
Vapid development in Docker Container!

1. Create a empty Directory and cd to it. 
```bash
mkdir /path/to/project
cd /path/to/project
```

2. Create a Docker volume and bind it to that directory:

```bash
docker volume create --opt type=none --opt o=bind --name vapid --opt device="$(pwd)"
``` 

3. Start vapid-dev container and have fun!

```bash
docker run --rm -it -v vapid:/opt/app-root/src/vapid -p 3000:3000 --name vapid vapid
```

4. To build a Production Container serving a static build of your vapid app run following command in your project dir:

```bash
docker build -t vapid-prod .
```

5. The production Container is ready to be used in Kubernetes or even on a single Docker-CE host. 
To make a test run, execute this and open [http://localhost:8080](http://localhost:8080)

```bash
docker run --rm -it -p 8080:80 vapid-prod
```

