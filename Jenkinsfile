pipeline {
    agent any
    
    environment {
        AWS_DEFAULT_REGION    = 'us-east-1'
    }
    
    stages {
        stage('Checkout') {
            steps {
                script {
                    // Checkout code from the repository
                    checkout scm
                }
            }
        }
        
        stage('Terraform Apply') {
            steps {
                script {
                    // Apply Terraform configuration
                    sh 'terraform init'
                    sh 'terraform apply -auto-approve'
                }
            }
        }
        
        stage('Deploy') {
            steps {
                script {
                    // Deploy the application (e.g., copy files to the instance)
                    sh 'scp -i /path/to/your/key.pem -o StrictHostKeyChecking=no -r * ec2-user@<instance_public_ip>:~/'
                }
            }
        }
    }
    
    post {
        success {
            // Add success notifications or cleanup steps
        }
        failure {
            // Add failure notifications or rollback steps
        }
    }
}

