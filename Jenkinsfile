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
                
                
                echo 'Deploying application....'
            }
        }
        stage('Test Integration') {
            steps {
                sh 'wget -m http://www.despliegue.joelmmsystem.com:8390/app-web-demo'
                echo 'Testing integration..'
            }
        }
    }
}
