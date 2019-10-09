FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 9090
ADD ./target/myproject-0.0.1-SNAPSHOT.jar /myproject.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dserver.port=9090","-jar","/myproject.jar"]
