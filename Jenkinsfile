pipeline {
  agent any

//   environment {
//     CI = true
//   }

  stages {
    //stage pertama
    stage ('Install Dependencies react project'){
      steps{
        echo "Start install dependencies react project"
        sh "npm install"
      }
    }

    //stage kedua
    stage ('Test project'){
      steps{
        echo "run test script"
        // sh 'chmod +x jenkins/scripts/test.sh'
        // sh './jenkins/scripts/test.sh'
      }
    } 

    //stage ketiga
    stage ('Build react project'){
      steps{
        sh 'npm run build'
      }
    }

    //stage keempat
    stage ('build docker images'){
      steps{
        script{
          app = docker.build("sendykris/reactapp-jcde")
        }
      }
    }

  }
}