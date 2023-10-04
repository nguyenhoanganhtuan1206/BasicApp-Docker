FROM gradle:jdk18-focal as base

WORKDIR /app
COPY gradle/ gradle/
COPY gradlew gradlew.bat settings.gradle ./

RUN gradle build

COPY src ./src
COPY /build/libs/demo-*.jar /demo.jar
EXPOSE 8080

FROM base as development
CMD ["java", "-jar", "/demo.jar"]