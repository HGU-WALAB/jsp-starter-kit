# JSP Starter Kit

## What is this?

This is a starter kit for JSP projects. It includes a basic project structure to help you get started.

## What's included?

```text
.
├── Dockerfile
├── LICENSE
├── README.md
├── mvnw
├── mvnw.cmd
├── pom.xml
└── src
    ├── main
    │   ├── java
    │   │   └── com
    │   │       └── example
    │   │           └── jspstarter
    │   │               ├── JspStarterApplication.java
    │   │               ├── ServletInitializer.java
    │   │               └── controller
    │   │                   └── DemoController.java
    │   ├── resources
    │   │   ├── application-dev.properties
    │   │   └── application.properties
    │   └── webapp
    │       ├── WEB-INF
    │       │   ├── views
    │       │   │   └── index.jsp
    │       │   └── web.xml
    │       └── static
    │           ├── css
    │           │   └── style.css
    │           ├── image
    │           │   └── fish.png
    │           └── js
    │               └── script.js
    └── test
        └── java
            └── com
                └── example
                    └── jspstarter
                        └── JspStarterApplicationTests.java
```

The following dependencies are included:

* Spring Boot 2.7.x: The main framework for simplified Spring-based application development.
* JDBC: Provides JDBC support for database connectivity in Spring Boot.
* MySQL Driver: The MySQL JDBC driver for connecting to MySQL databases.
* MyBatis 3: Integration of MyBatis with Spring Boot for SQL mapping and persistence.
* H2 Database: In-memory database commonly used for development and testing purposes.
* Lombok: A library for automatic code generation, reducing boilerplate code in development.
* JSP (Tomcat Jasper): Support for JavaServer Pages (JSP) using Tomcat Jasper in Spring Boot.
* JSTL: Jakarta Standard Tag Library, offering a set of tags for JSP pages.
* JUnit 5: Testing framework for writing and running tests in Java.

## What do I need?

* Java 8: this project based on Spring Boot 2.7.x, which requires Java 8 or higher. 
  * See [here](https://docs.spring.io/spring-boot/docs/2.7.13/reference/html/getting-started.html#getting-started.system-requirements) for system requirements.
* Docker (optional): this will be used to deploy the project.

## How do I use it?

1. Download this repository as a ZIP file and extract it.
2. Open the project and <u>**enable annotation processing**</u>.
3. Run the project and open `http://localhost:8080` in your browser.
4. If you can see the message `Welcome to My JSP Page!`, you're good to go!
5. Modify the project to suit your needs.

## How do I deploy this?

This guide uses Docker to host the project. Install Docker if you haven't already.

1. Log in to Docker Hub using `docker login`.
2. Make sure that context path is set to the root of this repository.
3. Run `docker buildx build --push --platform linux/amd64 -t <username>/<tag> .`
    * Replace `<username>` with your Docker Hub username and `<tag>` with the tag you want to use.
    * If you're using a different platform, replace `linux/amd64` with the platform you're using.
4. Connect to your server to be used for hosting and make sure Docker is installed.
5. Run `docker pull <username>/<tag>` to pull the image in the server.
6. Run `docker run -d -p 8080:8080 <username>/<tag>` to run the image.

## How do I contribute?

You can either open an issue or create a pull request.

If you're creating a pull request, follow these steps:

1. Fork this repository.
2. Create a new branch. Branch names should be descriptive.
3. Commit and push your changes.
4. Create a pull request and wait for the pull request to be reviewed.
5. If the pull request is approved, it will be merged into the main branch.