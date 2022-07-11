echo "Setup registry container"
docker container run -d -p 5000:5000 --name registry registry
echo "Current local images"
docker image ls
echo "Download an image from public repo."
docker pull hello-world
echo "Check the public image"
docker image ls
echo "Tag the image for distinction"
docker tag hello-world 127.0.0.1:5000/hello-world
echo "Push the downloaded image to the local registry"
docker push 127.0.0.1:5000/hello-world
echo "Remove public image from local storage"
docker image remove hello-world
echo "Download image from local registry"
docker pull 127.0.0.1:5000/hello-world
echo "Check images"
docker image ls