FROM maven:latest AS build
WORKDIR /usr/src/app
COPY . .
RUN mvn clean package

FROM tomcat:latest
WORKDIR /usr/local/tomcat/webapps
COPY --from=build /usr/src/app/target/*.war ./ROOT.war
EXPOSE 8080