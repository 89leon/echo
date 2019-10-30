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
          steps{
           sh '''
               docker build -t echoapp .
               if [[ ${GIT_BRANCH} == "master" ]]; then
                   sudo docker tag echoapp:latest echoapp:1.0."${BUILD_NUMBER}"
               fi
               if [[ ${GIT_BRANCH} == "dev" ]]; then
                   sudo docker tag echoapp:latest echoapp:dev-"${GIT_COMMIT}"
               fi
               if [[ ${GIT_BRANCH} == "staging" ]]; then
                   sudo docker tag echoapp:latest echoapp:staging-"${GIT_COMMIT}"
               fi
           '''
          }
      }
      /*stage('Publish'){
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
      }*/
  }
}