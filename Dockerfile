FROM maven:3.9.3 AS build
WORKDIR /usr/src/app
COPY . .
RUN mvn clean package

FROM tomcat:9.0.76
WORKDIR /usr/local/tomcat/webapps
COPY --from=build /usr/src/app/target/*.war ./ROOT.war
EXPOSE 8080