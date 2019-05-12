### Portainer
1. Swarm集群某个机器挂掉（或者是docker daemon挂掉）时，Portianer中的services的状态显示有误，挂掉节点的contianer还是running状态


### Swarm
1. 当某个节点挂掉之后，会转移container到可用节点上，但挂掉的节点恢复后该节点就木有任务了，让该节点分摊原来的负载
