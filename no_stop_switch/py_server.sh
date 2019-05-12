HTTP_IP=http://192.168.0.101
docker run -d --name py1 -p 8888:80 ubuntu:14.04 \
	sh -c 'cd / && python3 -m http.server 80'
