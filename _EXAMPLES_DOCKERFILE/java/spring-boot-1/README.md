## Spring Boot CLI Arguments
1. Running Spring app with maven:  ./mvnw spring-boot:run
2. Running Spring app with maven and arguments: ./mvnw spring-boot:run -Dspring-boot.run.arguments=--server.port=8085
3. Multiple arguments: ./mvnw spring-boot:run -Dspring-boot.run.arguments="--port=8085 --app_name=MeuApp"


## Spring Boot CLI Argumentos from "java -jar"
1. java -jar target/spring-boot-1-0.0.1-SNAPSHOT.jar --server.port=9090 --app_name=MyAppNameFromCLI

## Building Docker Image
1. Build Java project: ./mvnw clean install
2. Build Docker image: docker build --build-arg JAR_FILE=target/spring-boot-1-0.0.1-SNAPSHOT.jar -t jackanakin/springboot .
3. docker run -d -it -p 8080:8080 --name spring jackanakin/springboot --app_name="Docker Yeah"

## Go to http://localhost:8080/ to view app properties