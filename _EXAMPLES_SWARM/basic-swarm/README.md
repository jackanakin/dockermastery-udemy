# Docker Swarm basics

## Swarm environment setup

Check if swarm is active on host
>docker info | grep Swarm

1. To initialize a new swarm (host will be manager)
>docker swarm init

2. To join an existing swarm
>docker swarm join --token TOKEN IP:PORT

3. To leave a swarm
>docker swarm leave

### Node management

To check nodes on the swarm:
>docker node ls
To promoto no manager
>docker node promote NODE
To demote node to manager
>docker node demote NODE

## Docker service
### docker service <--> docker run

Docker service is similar to docker run
>docker service create alpine ping 8.8.8.8

List services
>docker service ls

List services containers
>docker service ps SERVICE_ID

### docker service update

Adding more replicas in hot
>docker service update SERVICE_ID --replicas 3

## Docker Stack

Deploy containers in swarm from a compose file, can't do BUILD in here, docker stack deploy WILL IGNORE BUILD
