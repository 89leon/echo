pipeline {
    agent any
    stages {
        stage('Start Building') {
            steps {
                 sh '''
                   echo "BUILD DONE"
                 '''
            }
        }
        stage('Produce image'){
            // when{
            //     branch 'master/*'
            // }
            // steps{
            //    sh 'echo "Produce master"'
            // }
            // when{
            //     branch 'staging/*'
            // }
            // steps{
            //    sh 'echo "Produce staging"'
            // }
            // when{
            //     branch 'dev/*'
            }
            steps{
               sh 'echo "Produce dev"'
            }
            

        }
        stage('Deploy') {
            steps {
                 sh '''
                   echo "Deploy DONE"
                 '''
            }
        }
        


    }
}





pipeline {
    agent any


    // triggers 
    // {
    //     gitlab(
    //     triggerOnPush: true,
    //     triggerOnMergeRequest: true,
    //     branchFilterType: 'All',
    //     addVoteOnMergeRequest: true)
    // }
    stages {
        stage('feature'){
            when{
                branch 'feature/*'
            }
            steps{
                
                configFileProvider([configFile(fileId: 'mavensettings.xml', variable: 'MAVEN_SETTINGS_XML')])
                {
                    sh 'mvn verify'
                }
            }
        }
        stage('master'){
            when {
                branch 'master'
            }
            steps{ 
                configFileProvider([configFile(fileId: 'mavensettings.xml', variable: 'MAVEN_SETTINGS_XML')])
                {
                    sh 'mvn -s $MAVEN_SETTINGS_XML deploy'
                }
            }
        }
        // stage('release'){
        //     when{
        //         branch 'release/*'
        //     }
        //     steps{
        //         sh './release.sh'
        //         configFileProvider([configFile(fileId: 'mavensettings.xml', variable: 'MAVEN_SETTINGS_XML')])
        //         {
        //             sh 'mvn -s $MAVEN_SETTINGS_XML deploy'
        //         }
        //     }
        // }
    }
} 