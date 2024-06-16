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
                //sh 'terraform apply --auto-approve'
                sh 'terraform plan -out=plan'
                //sh 'git add plan'
                //sh 'git commit -m "add plan"'
                //sh 'git push origin main'
                sh 'terraform show plan'
            }
        }
    }
}

