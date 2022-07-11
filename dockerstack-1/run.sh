docker swarm init
echo "oCKA@12ca22" | docker secret create psql-password -
docker stack deploy -c docker-compose.yml mydrupal
