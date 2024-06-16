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
        stage('terraform plan') {
            when {
                expression { params.ACTION == 'plan' }
            }
            steps {
                //sh 'terraform apply --auto-approve'
                sh 'terraform plan -out=plan'
                //sh 'git add plan'
                //sh 'git commit -m "add plan"'
                //sh 'git push origin main'
                sh 'terraform show plan'
            }
        }
        stage('terraform apply') {
            when {
                expression { params.ACTION == 'apply' }
            }
            steps {
                //sh 'terraform apply --auto-approve'
                sh 'terraform apply plan'
                //sh 'git add plan'
                //sh 'git commit -m "add plan"'
                //sh 'git push origin main'
            }
        }
        stage('terraform destroy') {
            when {
                expression { params.ACTION == 'destroy' }
            }
            steps {
                //sh 'terraform apply --auto-approve'
                sh 'terraform destroy --auto-approve'
                //sh 'git add plan'
                //sh 'git commit -m "add plan"'
                //sh 'git push origin main'
            }
        }
    }
}

