pipeline {
    agent any

    environment {
        PATH = "C:\\Program Files\\Go\\bin;${env.PATH}"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/zahra853/pratikum2.git'
            }
        }

        stage('Build') {
            steps {
                bat 'go version'
                bat 'go build -o app.exe main.go'
            }
        }

        stage('Test') {
            steps {
                bat 'start /B app.exe'
                bat 'timeout /T 3'
                bat 'curl -f http://localhost:8080'
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t zahra853/pratikum2 .'
            }
        }

        stage('Deploy') {
            steps {
                bat 'docker run -d -p 8080:8080 zahra853/pratikum2'
            }
        }
    }
}
