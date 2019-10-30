pipeline {
    agent any
    stages {
        stage('Build') {
            when {
               branch 'master'
            }
            steps {
                sh 'echo "Build master"'
            }
        }
        stage('Tag') {
            steps {
                sh 'echo "Tag"'
            }
        }
        stage('Deploy') { 
            steps {
                sh 'echo "Deploy"'
            }
        }
    }
}