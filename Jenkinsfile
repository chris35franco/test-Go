pipeline {
    agent { label 'Go' }
    stages {
        stage('Verificar PATH') {
            steps {
                script {
                    sh 'export PATH=$PATH:/home/jenkins/go/bin && go version'
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
                sh 'export PATH=$PATH:/home/jenkins/go/bin && go mod tidy'
            }
        }
        stage('Compilar') {
            steps {
                sh 'export PATH=$PATH:/home/jenkins/go/bin && go build -o app'
            }
        }
        stage('Pruebas') {
            steps {
                sh 'export PATH=$PATH:/home/jenkins/go/bin && go test ./...'
            }
        }
    }
}








