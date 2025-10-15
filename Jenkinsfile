pipeline {
    agent any

    tools {
        maven 'Maven_3.9'   // Name of Maven installed in Jenkins
        jdk 'JDK_21'        // Name of JDK installed in Jenkins
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
                echo "Running Spring Boot application..."
                bat "nohup java -jar ${APP_JAR} > app.log 2>&1 &"
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished.'
        }
    }
}
