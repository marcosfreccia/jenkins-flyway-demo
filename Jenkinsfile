// Jenkinsfile
// String prodCredentials = 'AWS_CREDENTIALS_PROD'
// String devCredentials = 'AWS_CREDENTIALS_DEV'
pipeline {
    environment {
        FLYWAY_CRED = "flyway_robot"
    }
    stages {
        stage("flyway - tests"){
            when {
                expression {
                    env.BRANCH_NAME == "first-branch"
                }
            }
            step{
                stage("Init"){
                    flywayrunner installationName: 'flyway', flywayCommand: 'info', credentialsId: FLYWAY_CRED,  url: 'jdbc:sqlserver://sqlserver001.cxilhnt2jjvn.eu-central-1.rds.amazonaws.com:1433;databaseName=flywaytests', locations: 'filesystem:$WORKSPACE/sql/', commandLineArgs: ''
                }
            }
        }
    }
}