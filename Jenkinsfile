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
    }
}