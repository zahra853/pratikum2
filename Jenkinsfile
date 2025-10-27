pipeline {
    agent any

    environment {
        PATH = "C:\\Program Files\\Go\\bin;${env.PATH}"
    }

    stages {
        stage('Build Go App') {
            steps {
                bat 'go version'
                bat 'go build -o app.exe main.go'
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t zahra853/pratikum2 .'
            }
        }

        stage('Run Docker Compose') {
            steps {
                bat 'docker-compose up -d'
            }
        }
    }

    post {
        failure {
            echo '❌ Build failed!'
        }
    }
}
