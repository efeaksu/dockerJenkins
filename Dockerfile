FROM openjdk:17
ADD target/dockerJenkins-0.0.1-SNAPSHOT.jar dockerJenkins-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","dockerJenkins-0.0.1-SNAPSHOT.jar"]