# OpenConnect via SOCKS5 Proxy

- Creates VPN connection within docker container
- Exposes SOCKS5 proxy to host, allowing proxied requests through the VPN connection
- Defaults to GlobalProtect protocol

## Usage

`git clone https://github.com/asyncopation/openconnect-via-socks.git`

`cd openconnect-via-socks && docker build -t openconnect-via-socks:latest .`

`docker run -d -e SERVER="$MYSERVER" -e USER="$MYUSER" -e PASSWORD="$MYPASS" -p 127.0.0.1:9070:9070 openconnect-via-socks`

Optionally pass a PROTOCOL environment variable to override the GlobalProtect default.

## Test

Now from the host machine, you can send traffic through the SOCKS proxy which is exposed on localhost:9070.  See how the second request below uses SOCKS5 and gets a different IP:

`curl ifconfig.co` => your local IP

`curl --socks5 localhost:9070 ifconfig.co` => your VPN IP

Now you can point any application to the SOCKS proxy at localhost:9070 to tunnel that traffic through the VPN!
