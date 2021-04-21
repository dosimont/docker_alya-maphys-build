FROM metacall/guix:latest
RUN apk add --no-cache git
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
RUN mkdir -p ~/.config/guix/
