# “Filters” assignment

Filters App is a web application built using Spring Boot, Lombok, Maven, H2, flyway for backend and Vue.js for frontend.
**Filters App** is a Java application which has a button to create new movie filter and representation of already
created
filters.

## Setup and Installation

1. Clone the Repository. Open in IntelliJ IDEA.
    ```bash
    git clone https://github.com/5OO/filters-app.git
    ```
2. Setup H2 database connection in `application.properties`.
3. Use dump from `\src\main\resources\data\backup_file.sql` to initialize tables and populate them with data.

## UI Part

The UI part of the application is made using Vue.js. The repository can be
found [here](https://github.com/5OO/filters-UI.git). Follow the README in the UI GitHub repository for further
instructions.

## Built With

* [Java 17](https://www.oracle.com/news/announcement/oracle-releases-java-17-2021-09-14/)
* [Spring Boot](https://spring.io/projects/spring-boot)
* [Lombok](https://projectlombok.org/)
* [Maven](https://maven.apache.org/)
* [H2](https://www.h2database.com/html/main.html)
* [Flyway](https://flywaydb.org/)
* [Vue.js](https://vuejs.org/) for frontend
