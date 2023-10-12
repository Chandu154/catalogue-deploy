pipeline {
    agent { node { label 'AGENT-1' } }
    parameters {
        string(name: 'Version', defaultValue: '1.0.1', description: 'Whoich version to deploy')
      
    }
    
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
