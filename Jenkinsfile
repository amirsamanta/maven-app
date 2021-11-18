node {    
      def app     
      stage('Clone repository') {                
           git url: 'https://github.com/amirsamanta/maven-app.git'
      }     
      stage('Build and Deploy image') {         
            sh "docker build -t amirsamantaray/npm:latest ."  
       }     
       stage ('Docker Login and Push'){
        sh "docker login -u amirsamantaray -p bapimunasss"
        sh "docker push amirsamantaray/npm:latest"
    }
}
        
