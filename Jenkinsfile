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
        stage('Copy to ec2'){
            steps{
                sshagent(['ec2-credential']) {
                // some block
                sh 'scp -o StrictHostKeyChecking=no target/*.jar ec2-user@172.31.47.81:/tmp'
    
                }
            }
        }
        stage('Build Tomcat Image'){
            steps{
                sh 'pwd'
                sh 'echo Workspace : $WORKSPACE'
                sh 'docker build -f Dockerfile -t akeeb/deploy_mscs:8 .'
            }
        }
        stage('Build Maven Package'){
            steps{
                sh 'mvn clean package'
            }
        }
        stage('Run App Container'){
            steps{
                sh 'docker run --name akeeb-deploy-container -d -p 8092:8092 akeeb/deploy_mscs:8'
            }
        }
      

    }
}