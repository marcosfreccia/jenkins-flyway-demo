// Jenkinsfile
// String prodCredentials = 'AWS_CREDENTIALS_PROD'
// String devCredentials = 'AWS_CREDENTIALS_DEV'
pipeline {
    agent any
    environment {
        FLYWAY_CRED = 'flyway_robot_mssql'
    }
    stages {
        stage("flyway - tests"){
            stages{
                stage("Init"){
                    steps{
                    echo "FLYWAY: ${FLYWAY_CRED}"
                    echo "BRANCH: ${env.BRANCH_NAME}"
                    echo "filesystem: ${env.WORKSPACE}"
                    }
                }
                stage("Flywy - Info"){
                    steps{
                        // flywayrunner installationName: 'flyway', flywayCommand: 'info', credentialsId: FLYWAY_CRED,  url: 'jdbc:sqlserver://sqlserver001.cxilhnt2jjvn.eu-central-1.rds.amazonaws.com:1433;databaseName=flywaytests', locations: 'filesystem:$WORKSPACE/sql', commandLineArgs: ''
                        flywayrunner installationName: 'flyway', flywayCommand: 'info', credentialsId: FLYWAY_CRED,  url: 'jdbc:sqlserver://sqlserver001.cxilhnt2jjvn.eu-central-1.rds.amazonaws.com:1433;databaseName=flywaytests', locations: "filesystem:${env.WORKSPACE}/sql", commandLineArgs: ''

                    }
                }

            }
        }
    }
}