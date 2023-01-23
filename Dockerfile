FROM openjdk:17-jdk-alpine
WORKDIR /
COPY /spring-petclinic/target/spring-petclinic-3.0.0-SNAPSHOT.jar /petclinic.jar
EXPOSE 8080
CMD ["java", "-jar", "/petclinic.jar"]
