pipeline {
    agent any

    tools {
        maven 'Maven_3.9'    // Must match your Jenkins Maven installation name
        jdk 'JDK_21'         // Must match your Jenkins JDK installation name
    }

    environment {
        APP_JAR = "target/Spring-Html-0.0.1-SNAPSHOT.jar"
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/AyeKyiPyar/spring-html.git'
            }
        }

        stage('Build') {
            steps {
                bat 'mvn clean package -DskipTests'
            }
        }

        stage('Test') {
            steps {
                bat 'mvn test'
            }
        }

        stage('Run') {
            steps {
                echo "Starting Spring Boot application..."
                // Run jar in background on Windows
                bat 'start cmd /c "java -jar target\\Spring-Html-0.0.1-SNAPSHOT.jar > app.log 2>&1"'
            }
        }
    }

    post {
        always {
            echo '✅ Pipeline finished.'
        }
    }
}
