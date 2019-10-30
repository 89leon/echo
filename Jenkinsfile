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
           sh 'su tomcat'
           sh '/var/jenkins_home/bin/gcloud init'
           sh 'docker build -t gcr.io/echo123/echoapp .'
           sh 'chmod +x tag.sh'
           sh './tag.sh'
          }
      }
      stage('Publish'){
          steps{
               withEnv(['GCLOUD_PATH=/var/jenkins_home/bin']) {
                sh '$GCLOUD_PATH/gcloud --version' 
                sh 'chmod +x publish.sh'
                sh './publish.sh'
            }
          
          }
      }
  }
}