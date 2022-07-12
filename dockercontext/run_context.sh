echo "Run command on other machine:"
DOCKER_HOST="tcp://127.0.0.1:2376" docker ps
echo "Create a context to bypass above SOCKET"
docker context create --docker "host=tcp://127.0.0.1:2375" myctx
echo "Check out the contexts:"
docker context ls
echo "Use the new context"
docker context use myctx
