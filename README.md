# AFVPN - Ad free VPN server

## Description
A docker [container](https://hub.docker.com/r/kolyunya/afvpn/) with a VPN server configured to block advertisement requests. This container is a combination of three containers: [ad free DNS server](https://github.com/Kolyunya/afdns), [ad free proxy server](https://github.com/Kolyunya/afprx) and [easy VPN server](https://github.com/Kolyunya/ezvpn).

## Installation
Just start the container and you are good to go. No configuration is required.

`docker run --privileged --detach --tty --net=host --restart=always --name=afvpn kolyunya/afvpn`
