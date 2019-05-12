DNSARGS="--dns 103.85.84.201 --dns 114.114.114.114"
PORTARGS="-p 172.17.0.1:53:53/udp"
VOLARGS="-v /var/run/docker.sock:/tmp/docker.sock"
docker run -d --name res -h resolvable $DNSARGS $PORTARGS $VOLARGS \
	gliderlabs/resolvable:master
