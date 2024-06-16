pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                checkout scm
            }
        }
        stage('terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('terraform apply') {
            steps {
                #sh 'terraform apply --auto-approve'
                sh 'terraform plan -out=plan'
            }
        }
    }
}
