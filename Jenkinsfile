pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from your version control system (e.g., Git)
                checkout scm
            }
        }

        stage('Build and Test') {
            steps {
                // Build and test the Maven project
                sh 'mvn clean install'
            }
        }

        stage('Docker Build') {
            steps {
                // Build Docker image using the Dockerfile
                sh 'docker build -t my-maven-app .'
            }
        }

        stage('Docker Deploy') {
            steps {
                // Run the Docker container
                sh 'docker run -d --name my-maven-app-container my-maven-app'
            }
        }
    }

    post {
        always {
            // Cleanup: Stop and remove the Docker container
            sh 'docker stop my-maven-app-container'
            sh 'docker rm my-maven-app-container'
        }
    }
}
