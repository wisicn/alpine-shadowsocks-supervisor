#!/bin/bash
docker run --name alpine-shadowsocks-supervisor -d -v /your/path/to/ss_supervisor_config_director/:/etc/supervisor.d/ -p 8388:8388  wisicn/alpine-shadowsocks-supervisor
