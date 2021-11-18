node{
    stage('Git Clone'){
        git url: 'https://github.com/amirsamanta/maven-app.git'
    }
    stage('Build Docker Image'){
        sh "cd"
        sh "cp /var/lib/jenkins/workspace/DockerImage/app.py /home/amirsamantaray/app/app.py"
        sh "cd /home/amirsamantaray/app"
        sh "docker build -t amirsamantaray/flask:latest ."
    }
    stage ('Docker Login and Push'){
        sh "docker login -u amirsamantaray -p bapimunasss"
        sh "docker push amirsamantaray/flask:latest"
    }
    stage('Deploy and Run as Container'){
        sh "docker login -u amirsamantaray -p bapimunasss"
        sh "docker run -d -p 8082:8080 --name flask amirsamantaray/flask:latest"
    }
}
