FROM openjdk:17
ADD jenkins/workspace/target/dockerJenkins-0.0.1-SNAPSHOT.jar dockerJenkins.jar
ENTRYPOINT ["java","-jar","dockerJenkins.jar"]