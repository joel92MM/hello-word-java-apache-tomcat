pipeline {
    agent any

    stages {
        stage('Test Junit') {
            steps {
                sh 'mvn clean test'
                echo 'Testing Junit..'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
                echo 'Building application..'
            }
        }
        stage('Deploy') {
            steps {
                //sh ' docker stop $(docker ps -a -q)'
                sh 'docker build -t hello-word-java-apache-tomcat .'
                sh 'docker run -d --rm -p 8090:80 hello-word-java-apache-tomcat'
                echo 'Deploying application....'
            }
        }
        stage('Test Integration') {
            steps {
                sh 'grep Joel | wget -m http://localhost:8090/app-web-demo'
                echo 'Testing integration..'
            }
        }
    }
}
