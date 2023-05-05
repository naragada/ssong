FROM khipu/openjdk17-alpine:latest AS builder
COPY . .
COPY src src
RUN chmod +x ./gradlew
RUN ./gradlew build -x test

FROM khipu/openjdk17-alpine:latest
LABEL appName="health-check"
EXPOSE 8080

WORKDIR /root

ARG buildDir=build/libs

COPY --from=builder ${buildDir}/healthcheck-0.0.1-SNAPSHOT.jar ./app.jar

CMD java -jar app.jar
