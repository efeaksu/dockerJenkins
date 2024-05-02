FROM openjdk:17
ADD jenkins/workspace/target/dockerJenkins-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]