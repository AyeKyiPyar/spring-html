pipeline {
    agent any

    tools {
        maven 'Maven_3.9'   // Name of Maven installed in Jenkins
        jdk 'JDK_17'        // Name of JDK installed in Jenkins
    }

    environment {
        APP_JAR = "target/Spring-Html-0.0.1-SNAPSHOT.jar"
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/AyeKyiPyar/springboot-html.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Run') {
            steps {
                echo "Running Spring Boot application..."
                sh "nohup java -jar ${APP_JAR} > app.log 2>&1 &"
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished.'
        }
    }
}
