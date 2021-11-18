node{
    def mavenHome= tool name: "maven", type: "maven"
    stage('Git Clone'){
        git url: 'https://github.com/amirsamanta/maven-app.git'
    }
    stage('Build'){
        sh "${mavenHome}/bin/mvn clean package"
    }
    stage('Build Docker Image'){
        sh "docker build -t amirsamantaray/maven-web-application ."
    }
    stage ('Docker Login and Push'){
                               {
        sh "docker login -u amirsamantaray -p bapimunasss"
    }

    
        sh "docker push amirsamantaray/maven-web-application:latest"
    }
    ##Editing Jenkins file in Github to show webhook effect
    stage('Deploy as Container'){
       sshagent(['Docker']) {
      
        sh "docker login -u naiduprasad -p Prasad1993"
        
        sh "ssh -o StrictHostKeyChecking=no ec2-user@172.31.38.94 docker rm -f webappcontainer || true"
        
        sh "ssh -o StrictHostKeyChecking=no ec2-user@172.31.38.94 docker run -d -p 8080:8080 --name webappcontainer naiduprasad/maven-web-application:latest"
            
            
        }

    }
}
