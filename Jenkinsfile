pipeline {
    agent {
        docker {
            image 'golang:1.21'
        }
    }
    stages {
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




