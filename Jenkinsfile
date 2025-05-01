pipeline {
    agent { label 'Go' }  // Especifica el nodo o etiqueta para el agente donde se ejecutará el pipeline
    environment {
        // Asegura que Go esté en el PATH para el entorno de Jenkins
        PATH = "/usr/local/go/bin:/home/jenkins/go/bin:${env.PATH}"
    }
    stages {
        stage('Verificar PATH') {
            steps {
                script {
                    // Verificar el PATH y la versión de Go
                    sh 'echo $PATH'
                    sh 'go version'  // Verifica si Go está correctamente instalado y accesible
                }
            }
        }
        stage('Descargar código') {
            steps {
                // Descargar el código desde el repositorio Git
                git branch: 'main', url: 'https://github.com/chris35franco/test-Go.git'
            }
        }
        stage('Instalar dependencias') {
            steps {
                // Instalar dependencias de Go
                sh 'go mod tidy'
            }
        }
        stage('Compilar') {
            steps {
                // Compilar la aplicación Go
                sh 'go build -o app'
            }
        }
        stage('Pruebas') {
            steps {
                // Ejecutar las pruebas de Go
                sh 'go test ./...'
            }
        }
    }
}









