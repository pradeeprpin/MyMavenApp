pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from your version control system (e.g., Git)
                checkout scm
            }
        }

        stage('Docker Build and Deploy') {
            steps {
                // Build Docker image using the Dockerfile and run the container
                sh 'docker build -t my-maven-app -f MyMavenaApp/Dockerfile .'
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
