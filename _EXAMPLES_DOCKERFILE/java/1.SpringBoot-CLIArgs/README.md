## Spring Boot CLI Arguments
Running Spring app with maven:
>./mvnw spring-boot:run

Running Spring app with maven and arguments:
>./mvnw spring-boot:run -Dspring-boot.run.arguments=--server.port=8085

Multiple arguments:
>./mvnw spring-boot:run -Dspring-boot.run.arguments="--port=8085 --app_name=MeuApp"

Spring Boot CLI Argumentos from "java -jar":
>java -jar target/spring-boot-1-0.0.1-SNAPSHOT.jar --server.port=8080 --app_name=MyAppNameFromCLI

Build Java project:
>./mvnw clean install

## Building Docker Image
Build Docker image:
>docker build --build-arg JAR_FILE=target/spring-boot-1-0.0.1-SNAPSHOT.jar -t jackanakin/springboot .

Run container passing variables through CLI
>docker run -d -it -p 8080:8080 --name spring jackanakin/springboot --app_name="Docker Yeah"

Go to http://localhost:8080/ to view app properties
