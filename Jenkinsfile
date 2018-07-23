node {

   stage('Clone Repository') {
        // Get some code from a GitHub repository
        git 'https://github.com/Aaqib041/Metro-Smart-Card-System.git'

   }
   stage('Check Installations'){
	//Testing tool installation and setup
	//sh "oc version"
    sh "java -version"
    //sh "mvn --version"
    sh "git --version"
    sh "docker --version"
   }
   stage('Build Maven project'){
       //sh "mvn clean install"
       sh " echo Building Docker File "
       // sh "sudo chown root:jenkins /run/docker.sock"
        sh " echo Current User is : $USER "
	//docker.build("maven-build")
	    sh 'docker build -t "akeeb/mscs" -f Dockerfile.build .'
   }
}
