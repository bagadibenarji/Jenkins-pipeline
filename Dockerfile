FROM openjdk:17-jdk-alpine
WORKDIR /spring-petclinic
COPY target/spring-petclinic-3.0.0-SNAPSHOT.jar /petclinic.jar
EXPOSE 8080
CMD ["java", "-jar", "/petclinic.jar"]
