pipeline {
    agent any
    tools {
        maven 'apache-maven-3.0.1' 
    }
    stages {
        stage('Check Installations') {
            steps {
                sh 'mvn --version'
                sh 'java -version'
                sh 'git --version'
                sh 'docker --version'
            }
        }
        stage('Build Tomcat Image'){
            steps{
                sh 'pwd'
                sh 'echo Workspace : $WORKSPACE'
                sh 'docker build -f Dockerfile -t akeeb/tomcat:8 .'
            }
        }
        stage('Build Maven Package'){
            steps{
                sh 'mvn clean package'
            }
        }

    }
}