pipeline {
  agent none

  stages {

    stage('Testcafe') {
      agent { dockerfile true }
      steps {
        echo 'Successfull'
      }
    }

  }

   post {
    always {
      // cleanup workspace
      deleteDir()
    }
  }
}