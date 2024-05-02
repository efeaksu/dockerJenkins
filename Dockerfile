FROM openjdk:17
ADD target/dockerJenkins-0.0.1-SNAPSHOT.jar dockerJenkins.jar
ENTRYPOINT ["java","-jar","dockerJenkins.jar"]