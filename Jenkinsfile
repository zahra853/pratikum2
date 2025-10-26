pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/zahra853/pratikum2.git'
            }
        }

        stage('Build') {
            steps {
                sh 'go build -o app main.go'
            }
        }

        stage('Test') {
            steps {
                sh './app & sleep 3 && curl -f http://localhost:8080'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t zahra853/pratikum2 .'
            }
        }

        stage('Deploy') {
            steps {
                sh 'docker run -d -p 8080:8080 zahra853/pratikum2'
            }
        }
    }
}
