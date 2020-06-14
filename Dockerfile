FROM openjdk:8-jdk-alpine
RUN apk add --no-cache bash
ARG JAR_FILE=target/profiles.jar
COPY ${JAR_FILE} app.jar
COPY wait-for-it.sh /wait-for-it.sh
RUN chmod +x /wait-for-it.sh
ENTRYPOINT ["java","-jar","/app.jar"]