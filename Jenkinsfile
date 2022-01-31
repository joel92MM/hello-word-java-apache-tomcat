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
                
                sh 'docker build -t hello-word-java-apache-tomcat .'
                sh 'docker run -d --rm -p 8390:8080 hello-word-java-apache-tomcat'
                echo 'Deploying application....'
            }
        }
        stage('Test Integration') {
            steps {
                sh 'grep wget -m http://www.despliegue.joelmmsystem.com:8390/app-web-demo'
                echo 'Testing integration..'
            }
        }
    }
}
