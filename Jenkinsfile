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
        sh " docker rm -f akeeb-build-mscs"

        //Run maven image
        sh " docker run  --name akeeb-build-mscs akeeb/mscs"
   }

   stage('Publish Docker Image') {
        withDockerRegistry([ credentialsId: "a6944791-4326-4bd5-bd89-6a8836381124", url: "" ]) {
          sh 'docker push akeeb/mscs:latest'
        }
    }

   stage('Deploy Spring Boot Application') {

         //Remove maven-build-container if it exisits
       //sh " docker rm -f java-deploy-container"

       sh " docker run --name akeeb-deploy-mscs --volumes-from akeeb-build-mscs -d -p 8092:8083 akeeb/mscs"
   }

}
