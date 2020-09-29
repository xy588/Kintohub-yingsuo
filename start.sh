#!/bin/sh

yingsuo -s 0.0.0.0 -p ${PORT:=3000} -k ${PASSWORD:=password} -m ${METHOD:=chacha20-ietf-poly1305} --plugin suoying --plugin-opts "server;path=${WSPATH:=/posts.html}" >/dev/null 2>&1
