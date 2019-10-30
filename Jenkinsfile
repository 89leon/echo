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
           sh 'docker build -t echoapp .'
           sh 'chmod +x tag.sh'
           sh './tag.sh'
          }
      }
      stage('Publish'){
          steps{
           sh 'chmod +x publish.sh'
           sh './publish.sh'
          }
      }
  }
}