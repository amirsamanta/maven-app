node{
    stage('Git Clone'){
        git url: 'https://github.com/amirsamanta/maven-app.git'
    }
    stage('Build Docker Image'){
        sh "cd"
        sh "cp /var/lib/jenkins/workspace/DockerImage/requirements.txt /app"
        sh "cp /var/lib/jenkins/workspace/DockerImage/app.py /app"
        sh "docker build -t amirsamantaray/flask-tutorial:latest ."
    }
    stage ('Docker Login and Push'){
        sh "docker login -u amirsamantaray -p bapimunasss"
        sh "docker push amirsamantaray/flask-tutorial:latest"
    }
    stage('Deploy and Run as Container'){
        sh "docker login -u amirsamantaray -p bapimunasss"
        sh "docker run -d -p 5000:5000 --name flaskapp amirsamantaray/flask-tutorial:latest"
    }
}
