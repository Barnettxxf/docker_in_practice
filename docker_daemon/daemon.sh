host=`hostname -I | awk '{print $1}'`
port=2375
sudo systemctl stop docker.service
# sudo dockerd -H unix:///var/run/docker.sock -H tcp://0.0.0.0:2375
sudo dockerd -H unix:///var/run/docker.sock -H tcp://$host:$port
