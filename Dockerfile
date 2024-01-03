FROM debian:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install tftpd-hpa -y -qq && \
	apt-get clean && rm -rf /var/lib/apt/lists/*

CMD echo -n "Starting $(in.tftpd --version)" && \
	in.tftpd --foreground --create --secure --ipv4 --verbose --user tftp \
	--address 0.0.0.0:69 --blocksize 1468 /srv/tftp
