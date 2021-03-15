pipeline {
  agent any

  environment {
    CI = 'true'
  }

  stages {
    //stage pertama
    stage ('Install Dependencies react project'){
      steps{
        echo "Start install dependencies react project"
        sh "npm install"
      }
    }

    //stage kedua
    stage ('Test project') {
      steps{
        sh 'chmod +x jenkins/scripts/test.sh'
        sh './jenkins/scripts/test.sh'
      }
    } 

  }
}