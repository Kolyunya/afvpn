FROM debian:8.2
USER root

# AFDNS section
EXPOSE 53/udp
EXPOSE 53/tcp
COPY afdns/scripts/* /usr/bin/
COPY afdns/configs/* /etc/bind/

# AFPRX section
EXPOSE 3128/tcp
COPY afprx/scripts/* /usr/bin/
COPY afprx/configs/squid3/* /etc/squid3/
COPY afprx/configs/squidguard/* /etc/squidguard/

# EZVPN section
EXPOSE 1194/udp
COPY ezvpn/scripts/* /usr/bin/
COPY ezvpn/configs/* /etc/openvpn/
COPY ezvpn/configs/auth /etc/openvpn/auth
COPY ezvpn/configs/cert /etc/openvpn/cert
COPY ezvpn/configs/pswd /etc/openvpn/pswd
COPY ezvpn/configs/temp /etc/openvpn/temp

# AFVPN section
COPY scripts/* /usr/bin/
RUN afvpn-install

# Start all components
ENTRYPOINT afvpn-start && sh
