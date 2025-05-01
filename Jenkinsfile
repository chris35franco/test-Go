pipeline {
    agent { label 'Go' }
    environment {
        PATH = "/home/jenkins/go/bin:${env.PATH}"
    }
    stages {
        stage('Verificar PATH') {
            steps {
                script {
                    sh 'echo $PATH'
                    sh 'go version'
                }
            }
        }
        stage('Descargar código') {
            steps {
                git branch: 'main', url: 'https://github.com/chris35franco/test-Go.git'
            }
        }
        stage('Instalar dependencias') {
            steps {
                sh 'go mod tidy'
            }
        }
        stage('Compilar') {
            steps {
                sh 'go build -o app'
            }
        }
        stage('Pruebas') {
            steps {
                sh 'go test ./...'
            }
        }
    }
}






