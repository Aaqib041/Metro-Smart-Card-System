node {

   stage('Clone Repository') {
        // Get some code from a GitHub repository
        git 'https://github.com/Aaqib041/Metro-Smart-Card-System.git'
    
   }
   stage('RHC Client Test'){
	//Testing rhc tool installation ans setup
	//sh "rhc"
	//sh "rhc --version"
   }
   stage('Build Maven Image') {

	sh " echo Building Docker File "
       // sh "sudo chown root:jenkins /run/docker.sock"
        sh " echo Current User is : $USER "
	//docker.build("maven-build")
	sh 'docker build -t "akeeb/mscs" .'
   }
   
   stage('Run Maven Container') {
       
        //Remove maven-build-container if it exisits
       // sh " docker rm -f maven-build-mscs"
        
        //Run maven image
        sh " docker run  --name akeeb-build-mscs akeeb/mscs"
   }
   
   stage('Deploy Spring Boot Application') {
        
         //Remove maven-build-container if it exisits
       //sh " docker rm -f java-deploy-container"
       
       //sh " docker run --name akeeb-deploy-mscs --volumes-from akeeb-build-mscs -d -p 8092:8082 denisdbell/petclinic-deploy"
   }

}
