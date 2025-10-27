pipeline {
    agent any

    environment {
        PATH = "C:\\Program Files\\Go\\bin;${env.PATH}"
    }

    stages {
        stage('Checkout') {
            steps {
                echo '📦 Checking out source code...'
                checkout scm
            }
        }

        stage('Build Go App') {
            steps {
                echo '🏗️ Building Go application...'
                bat 'go version'
                bat 'go build -o app.exe main.go'
            }
        }

        stage('Docker Build') {
            steps {
                echo '🐳 Building Docker image...'
                bat 'docker build -t zahra853/pratikum2 .'
            }
        }

        stage('Run Docker Compose') {
            steps {
                echo '🚀 Running Docker Compose...'
                bat 'docker compose up -d'
            }
        }

        // ✅ Tambahkan stage ini supaya "Post Actions" tampil hijau juga
        stage('Post Actions') {
            steps {
                echo '🧹 Cleaning up environment...'
                echo '✅ Build and deployment completed successfully!'
            }
        }
    }

    post {
        success {
            echo '🎉 Pipeline finished successfully!'
        }
        failure {
            echo '❌ Build failed! Please check the logs.'
        }
        always {
            echo '🔚 Pipeline run completed.'
        }
    }
}
