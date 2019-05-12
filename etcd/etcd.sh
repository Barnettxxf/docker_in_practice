IMG=quay.io/coreos/etcd:v2.0.10
docker pull $IMG
HTTP_IP=http://192.168.0.101
CLUSTER="etcd0=$HTTP_IP:2380,etcd1=$HTTP_IP:2480,etcd2=$HTTP_IP:2580"
ARGS=
ARGS="$ARGS -listen-client-urls http://0.0.0.0:2379"
ARGS="$ARGS -listen-peer-urls http://0.0.0.0:2380"
ARGS="$ARGS -initial-cluster-state new"
ARGS="$ARGS -initial-cluster $CLUSTER"
docker run -d -p 2379:2379 -p 2380:2380 --name etcd0 $IMG \
	$ARGS -name etcd0 -advertise-client-urls $HTTP_IP:2379 \
	-initial-advertise-peer-urls $HTTP_IP:2380
docker run -d -p 2479:2379 -p 2480:2380 --name etcd1 $IMG \
	$ARGS -name etcd1 -advertise-client-urls $HTTP_IP:2479 \
	-initial-advertise-peer-urls $HTTP_IP:2480
docker run -d -p 2579:2379 -p 2580:2380 --name etcd2 $IMG \
	$ARGS -name etcd2 -advertise-client-urls $HTTP_IP:2579 \
	-initial-advertise-peer-urls $HTTP_IP:2580

