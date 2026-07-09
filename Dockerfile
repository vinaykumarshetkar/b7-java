FROM eclipse-temurin:8-jdk
WORKDIR /app
COPY /target/my-app-2.0-SNAPSHOT.jar /app/app.jar
CMD java -jar app.jar
