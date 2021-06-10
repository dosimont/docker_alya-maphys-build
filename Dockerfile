FROM metacall/guix:latest
RUN apk add --no-cache git openssh
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
RUN mkdir -p ~/.config/guix/
RUN export gitalya="git clone https://gitlab.com/bsc-alya/alya.git"
RUN export cpchannels="cp channels.scm ~/.config/guix"
