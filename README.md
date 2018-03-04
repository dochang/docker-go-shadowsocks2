Docker go-shadowsocks2
========================

[![Docker Stars](https://img.shields.io/docker/stars/dochang/go-shadowsocks2.svg)](https://hub.docker.com/r/dochang/go-shadowsocks2/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dochang/go-shadowsocks2.svg)](https://hub.docker.com/r/dochang/go-shadowsocks2/)
[![Docker Automated build](https://img.shields.io/docker/automated/dochang/go-shadowsocks2.svg)](https://hub.docker.com/r/dochang/go-shadowsocks2/)
[![Docker Build Status](https://img.shields.io/docker/build/dochang/go-shadowsocks2.svg)](https://hub.docker.com/r/dochang/go-shadowsocks2/)
[![](https://images.microbadger.com/badges/image/dochang/go-shadowsocks2.svg)](https://microbadger.com/images/dochang/go-shadowsocks2 "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/dochang/go-shadowsocks2.svg)](https://microbadger.com/images/dochang/go-shadowsocks2 "Get your own version badge on microbadger.com")

build
-----

    docker build .

run
---

    docker run -d -v /confdir:/etc/shadowsocks dochang/go-shadowsocks2:latest go-shadowsocks2 [...]

