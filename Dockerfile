FROM maven:3.9.3-eclipse-temurin-17 AS build

WORKDIR /usr/src/app

COPY . .

RUN mvn clean install

FROM tomcat:latest

WORKDIR /usr/local/tomcat/webapps

COPY --from=build /usr/src/app/target/*.war ./ROOT.war

EXPOSE 8080