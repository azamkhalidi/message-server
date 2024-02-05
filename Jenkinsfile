pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        withGradle()
      }
    }

    stage('deploy') {
      steps {
        sh 'docker build --tag=message-server:latest .'
      }
    }

    stage('run') {
      steps {
        sh 'docker run -p8888:8080 message-server:latest'
      }
    }

  }
}