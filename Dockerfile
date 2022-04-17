FROM alpine:latest 
MAINTAINER Greg Probst


# Install boinc client
RUN apk update && apk upgrade
RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing boinc tzdata

User root

# BOINC RPC port
EXPOSE 31416 80 443

WORKDIR /var/lib/boinc

ENTRYPOINT ["/usr/bin/boinc", "--attach_project"]
CMD ["https://lhcathome.cern.ch/lhcathome/"]

