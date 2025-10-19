# ========== Build stage ==========
FROM maven:3.9-eclipse-temurin-21 AS build
WORKDIR /build
COPY pom.xml .
RUN mvn -q -e -DskipTests dependency:go-offline
COPY src ./src
RUN mvn -q -DskipTests clean package

# ========== Run stage ==========
FROM eclipse-temurin:21-jre-alpine
WORKDIR /app
COPY --from=build /build/target/*SNAPSHOT.jar app.jar
ENV JAVA_OPTS=""
EXPOSE 8085
ENTRYPOINT ["sh","-c","java $JAVA_OPTS -jar /app/app.jar"]
