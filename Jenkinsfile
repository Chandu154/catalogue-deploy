pipeline {
    agent { node { label 'AGENT-1' } }
    
    
    stages {
        stage('deploy'){
            steps{
                echo "Deploying..."
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
