FROM maven:latest
WORKDIR /service-registry

COPY . /service-registry
COPY . /src/main/resources/application.yaml
EXPOSE 8761
ENTRYPOINT ["java", "-jar", "/service-registry/target/service-registry-0.0.1-SNAPSHOT.jar"]

