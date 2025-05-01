pipeline {
    agent { label 'Go' }
    stages {
        stage('Descargar código') {
            steps {
                git branch: 'main', url: 'https://github.com/chris35franco/test-Go.git'
            }
        }
        stage('Instalar dependencias') {
            steps {
                script {
                    // Aquí no es necesario crear un entorno, pero si usas dependencias con 'go mod', puedes hacer algo como:
                    sh 'go mod tidy' // Asegura que las dependencias estén descargadas
                }
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




