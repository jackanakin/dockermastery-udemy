#mostra Hello World no nginx com Dokcer

docker build -t hello .
docker run --rm -p 80:80 hello
