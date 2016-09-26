[![](https://images.microbadger.com/badges/version/wisicn/alpine-shadowsocks-supervisor.svg)](https://microbadger.com/images/wisicn/alpine-shadowsocks-supervisor "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/wisicn/alpine-shadowsocks-supervisor.svg)](https://microbadger.com/images/wisicn/alpine-shadowsocks-supervisor "Get your own image badge on microbadger.com")
## Credit
This docker file is created from [shadowsocks/shadowsocks](https://github.com/shadowsocks/shadowsocks) and [gliderlabs/docker-alpine](https://github.com/gliderlabs/docker-alpine). Thanks the authors of shadowsocks and gliderlabs/docker-alpine.
## Introduction
This is a Dockerfile to build a container image for Shadowsocks and Supervisor. The Shadowsocks server can run under the control of Supervisor.

And this Docker image is based on gliderlabs/docker-alpine, so the size of the image is super small, only 56MB.
### Git repository
The source files for this project can be found here: [https://github.com/wisicn/alpine-shadowsocks-supervisor](https://github.com/wisicn/alpine-shadowsocks-supervisor)

If you have any improvements please submit a pull request.
### Docker hub repository
The Docker hub build can be found here: [https://registry.hub.docker.com/u/wisicn/alpine-shadowsocks-supervisor/](https://registry.hub.docker.com/u/wisicn/alpine-shadowsocks-supervisor/)
## Versions
| Tag | Shadowsocks | Supervisor | Alpine |
|-----|-------|-----|--------|
| latest | 2.9.0 | 3.2.0 | 3.4 |


## Building from source
To build from source you need to clone the git repo and run docker build:
```
git clone https://github.com/wisicn/alpine-shadowsocks-supervisor
docker build -t alpine-shadowsocks-supervisor:latest .
```

## Pulling from Docker Hub
Pull the image from docker hub rather than downloading the git repo. This prevents you having to build the image on every docker host:
```
docker pull wisicn/alpine-shadowsocks-supervisor:latest
```

## Running
To simply run the container:

```
sudo docker run --name alpine-shadowsocks-supervisor --restart=always -d -v /your/path/to/ss_supervisor_config_director/:/etc/supervisor.d/ -p 8388:8388 -p 8388:8388/udp wisicn/alpine-shadowsocks-supervisor
```

You can change the -p ```<your Port>:8388``` and  -p ```<your Port>:8388/udp``` to override the shadowsocks service listening port.

### Volumes and Config file
The config file for Shadowsocks and Supervisor are located in /etc/supervisor.d/ .

So you must link your  Shadowsocks and Supervisore directory on the docker host to the container via  -v /your/path/to/ss_supervisor_config_director/:/etc/supervisor.d/

You can see the config files example under the data/ directory in the repository.
