pipeline {

  agent {
    docker {
      image 'node:11-alpine' 
    }
  } 

  stages {

    stage("Prepare") {
      steps {
        sh 'yarn install --non-interactive'
      }
    }

    stage("TestCafe") {
      steps {
         sh 'yarn test:e2e:all'
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