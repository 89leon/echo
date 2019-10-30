pipeline {
  agent any
  // triggers
  // {
  //     gitlab(
  //     triggerOnPush: true,
  //     triggerOnMergeRequest: true,
  //     branchFilterType: 'All',
  //     addVoteOnMergeRequest: true
  //     )
  // }
  stages {
      stage('Build and Tag'){
          when{
              branch 'master'
          }
          steps{
             sh 'docker build -t echoapp .'
             sh 'docker tag echoapp:latest echoapp:1.0."${BUILD_NUMBER}"'
          }
          when{
              branch 'staging'
          }
          steps{
             sh 'docker build -t echoapp .'
             sh 'docker tag echoapp:latest echoapp:staging-"${GIT_COMMIT}"'
          }
          when{
              branch 'dev/*'
          }
          steps{
             sh 'docker build -t echoapp .'
             sh 'docker tag echoapp:latest echoapp:dev-"${GIT_COMMIT}"'
          }
      }
      stage('Publish'){
          when{
              branch 'master'
          }
          steps{
             //sh 'docker tag echoapp:latest echoapp:1.0."${BUILD_NUMBER}"'
             sh 'echo deploy'
          }
          when{
              branch 'staging'
          }
          steps{
             //sh 'docker tag echoapp:latest echoapp:staging-"${GIT_COMMIT}"'
             sh 'echo deploy'
          }
          when{
              branch 'dev/*'
          }
          steps{
             //sh 'docker tag echoapp:latest echoapp:dev-"${GIT_COMMIT}"'
             sh 'echo deploy'
          }
      }
  }
}