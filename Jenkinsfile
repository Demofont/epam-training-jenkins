pipline {
  agent any

  stages {
    stage('Build') {
      steps {
        sh 'echo HelloPipline > hello.txt'
      }
    }
    stage ('Publish') {
      steps {
        archiveArtifacts artifacts: 'hello.txt'
        }
      }
    }
}