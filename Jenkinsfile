pipeline {
    agent any

    stages {
        stage('BUILD') {
            steps {
                sh 'echo Hello > hello.txt'
            }
        }
        stage('Publish') {
            steps {
                archiveArtifacts artifacts: 'hello.txt'
            } 
        }    
    }
}
