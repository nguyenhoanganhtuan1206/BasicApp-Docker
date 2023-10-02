FROM gradle:jdk18-focal
WORKDIR /app

COPY gradle/ gradle/
COPY gradlew gradlew.bat settings.gradle ./

RUN gradle build

COPY /build/libs/demo-0.0.1-SNAPSHOT.jar /app/build/libs/demo-0.0.1-SNAPSHOT.jar
COPY src ./src
EXPOSE 8080

CMD ["java", "-jar", "/app/build/libs/demo-0.0.1-SNAPSHOT.jar"]