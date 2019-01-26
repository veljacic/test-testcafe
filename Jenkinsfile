pipeline {
  agent none

  stages {

    stage('Testcafe') {
      agent { docker 'testcafe/testcafe' }
      steps {
        sh "chromium --no-sandbox /tests"
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