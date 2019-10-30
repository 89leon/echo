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

            when {
               branch 'staging'
            }
            steps {
                sh 'echo "Build staging"'
            }

            when {
               branch 'dev'
            }
            steps {
                sh 'echo "Build dev"'
            }
        }
        stage('Tag') {
            when {
               branch 'master'
            }
            steps {
                sh 'echo "Tag master"'
            }

            when {
               branch 'staging'
            }
            steps {
                sh 'echo "Tag staging"'
            }

            when {
               branch 'dev'
            }
            steps {
                sh 'echo "Tag dev"'
            }
        }
        stage('Deploy') {
            when {
               branch 'master'
            }
            steps {
                sh 'echo "Deploy master"'
            }

            when {
               branch 'staging'
            }
            steps {
                sh 'echo "Deploy staging"'
            }

            when {
               branch 'dev'
            }
            steps {
                sh 'echo "Deploy dev"'
            }
        }
    }
}