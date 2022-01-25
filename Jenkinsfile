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
                sh 'docker build -t hello_world_apache_php .'
                sh 'docker run -d --rm -p 8089:80 hello_world_apache_php'
                echo 'Deploying application....'
            }
        }
        stage('Test Integration') {
            steps {
                sh 'wget -m http://www.example.com'
                sh 'grep -i Joel'
                echo 'Testing integration..'
            }
        }
    }
}
