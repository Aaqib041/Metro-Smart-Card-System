node {

   stage('Clone Repository') {
        // Get some code from a GitHub repository
        git 'https://github.com/Aaqib041/Metro-Smart-Card-System.git'

   }
   stage('Check Installations'){
	//Testing tool installation and setup
	//sh "oc version"
    sh "java -version"
    sh "mvn --version"
    sh "git --version"
   }
}
