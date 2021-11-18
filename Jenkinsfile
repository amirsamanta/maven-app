node{
    stage('Git Clone'){
        git url: 'https://github.com/amirsamanta/maven-app.git'
    }
    stage('Build Docker Image'){
        sh "docker build -t amirsamantaray/python-application ."
    }
    stage ('Docker Login and Push'){
        sh "docker login -u amirsamantaray -p bapimunasss"
        sh "docker push amirsamantaray/python-application:latest"
    }
    stage('Deploy and Run as Container'){
        sh "docker login -u amirsamantaray -p bapimunasss"
        sh "docker run -d -p 8081:8080 --name pythonapp amirsamantaray/python-application:latest"
    }
}
