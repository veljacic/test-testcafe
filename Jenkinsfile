pipeline {
  agent none

  stages {

    stage("Checkout") {
      agent any
      steps {
        checkout scm
      }
    }

    stage("Show paths") {
      agent any

    steps {
      sh'printenv'
      echo "pwd ++++++++++++"
      sh "pwd;"

    }

    }

    stage('Testcafe') {
      agent { dockerfile {
        filename 'Dockerfile'
        args "--volumes-from 5d10875f8f5d"
        } 
      }
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