pipeline {
    agent { node { label 'AGENT-1' } }

    // options {
    //     ansiColor('xterm')
    // }

    parameters {
        string(name: 'version', defaultValue: '1.0.1', description: 'Whoich version to deploy')
      
    }
    
    stages {
        stage('deploy'){
            steps{
                echo "Deploying..."
                echo "Version from params: ${params.version} "
            }

            }
        

        stage('Init'){
            steps{
                sh """
                   cd terraform 
                   terraform init -reconfigure
                """
            }

            }

            stage('plan'){
            steps{
                sh """
                   cd terraform 
                   terraform plan -var="app_version=${params.version}"
                """
            }

            }

    }

    post{
        always{
            echo 'cleaning up workspace'
            deleteDir()
        }
    }
}
