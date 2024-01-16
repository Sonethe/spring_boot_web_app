FROM openjdk:17-oracle
MAINTAINER Anton Mazulev
EXPOSE 8080
COPY target/spring_boot_web_app-0.0.1-SNAPSHOT.jar spring_boot_web_app.jar
ENTRYPOINT ["java", "-jar", "/spring_boot_web_app.jar"]