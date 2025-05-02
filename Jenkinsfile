pipeline {
    agent {
        docker {
            image 'agente-go'       // Imagen que construiste con Go instalado
            args '-u jenkins'       // Usa el usuario que creaste en el Dockerfile
        }
    }
    environment {
        PATH = "/usr/local/go/bin:/home/jenkins/go/bin:${env.PATH}"
    }
    stages {
        stage('Verificar PATH') {
            steps {
                sh 'echo $PATH'
                sh 'go version'
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









