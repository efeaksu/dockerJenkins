pipeline {
    agent any
    tools {
        maven 'Maven'
    }
    stages {
        stage('Build Maven') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/efeaksu/dockerJenkins']]])
                bat 'mvn clean install'
            }
        }
        stage('Build docker image') {
            steps {
                script {
                    docker.build("demo12:${env.BUILD_NUMBER}")
                }
            }
        }
        stage('Push image to Hub') {
            steps {
                script {
                    docker.image("demo12:${env.BUILD_NUMBER}").run("-d -p 8080:8080 --name demo-container")
                }
            }
        }
    }
}