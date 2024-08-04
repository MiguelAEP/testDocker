FROM eclipse-temurin:21.0.3_9-jdk
EXPOSE 80 3307
WORKDIR /root

COPY ./pom.xml /root
COPY ./.mvn /root/.mvn
COPY ./mvnw /root

COPY ./src /root/src

ARG JAR_FILE=target/SpringDocker-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} SpringDocker-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java","-jar","SpringDocker-0.0.1-SNAPSHOT.jar"]



