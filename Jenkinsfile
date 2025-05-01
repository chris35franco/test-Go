pipeline {
    agent { label 'Go' }
    stages {
        stage('Verificar PATH') {
            steps {
                script {
                    // Verificar que el PATH esté configurado correctamente
                    sh 'echo $PATH'
                    sh 'go version' // Asegurarse de que Go esté instalado y accesible
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
                script {
                    // Asegurarse de que las dependencias estén descargadas
                    sh 'go mod tidy'
                }
            }
        }
        stage('Compilar') {
            steps {
                // Compilar el código
                sh 'go build -o app'
            }
        }
        stage('Pruebas') {
            steps {
                // Ejecutar las pruebas
                sh 'go test ./...'
            }
        }
    }
}





