pipeline {
    agent any
    environment {
        GO111MODULE = 'on'
    }
    stages {
        stage('Descargar código') {
            steps {
                git branch: 'main', url: 'https://github.com/chris35franco/test-Go'
            }
        }
        stage('Compilar') {
            steps {
                sh 'go build'
            }
        }
        stage('Pruebas') {
            steps {
                sh 'go test ./...'
            }
        }
    }
}

