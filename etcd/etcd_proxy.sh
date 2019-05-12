docker run -d -p 8080:8080 --restart always --name etcd-proxy $IMG \
	-proxy on -listen-client-urls http://0.0.0.0:8080 \
	-initial-cluster $CLUSTER
