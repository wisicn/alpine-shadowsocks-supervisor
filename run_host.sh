#!/bin/bash
docker run --name alpine-shadowsocks-supervisor -d --restart=always -v /your/path/to/ss_supervisor_config_director/:/etc/supervisor.d/ -p 8388:8388 -p 8388:8388/udp  wisicn/alpine-shadowsocks-supervisor
