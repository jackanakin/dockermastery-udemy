docker swarm init --advertise-addr=127.0.0.1
docker service create --name swarm-postgres --health-cmd="pg_isready -U postgres || exit 1" -e POSTGRES_PASSWORD=mypasswordpg postgres