pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from your version control system (e.g., Git)
                checkout scm
            }
        }

        stage('Prepare JAR File') {
            steps {
                // Copy the JAR file to a temporary directory
                sh 'cp /var/lib/jenkins/workspace/New-build-app/target/MyMavenApp-1.0-SNAPSHOT.jar /tmp/'
            }
        }

        stage('Docker Build and Deploy') {
            steps {
                // Copy the JAR file from the temporary directory to workspace
                sh 'cp /tmp/MyMavenApp-1.0-SNAPSHOT.jar /var/lib/jenkins/workspace/MymavenAPP-Deploy/'

                // Build Docker image using the Dockerfile and run the container
                sh 'docker build -t my-maven-app -f /var/lib/jenkins/workspace/MymavenAPP-Deploy/Dockerfile .'
                sh 'docker run -d --name my-maven-app-container my-maven-app'
            }
        }
    }

   
}
