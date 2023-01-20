FROM adoptopenjdk/openjdk14:alpine-slim
COPY target/student-0.0.1-SNAPSHOT.jar student-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom", "-jar", "student-0.0.1-SNAPSHOT.jar"]
