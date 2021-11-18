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
        sh "docker login -u amirsamantaray -p bapimunasss"
        sh "docker push amirsamantaray/maven-web-application:latest"
    }
    stage('Deploy and Run as Container'){
        sh "docker login -u amirsamantaray -p bapimunasss"
        sh "docker run -d -p 8081 --name webappcontainer amirsamantaray/maven-web-application:latest"
    }
}
