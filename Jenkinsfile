pipeline {
    agent { label 'Go' }
    environment {
        PATH = "/home/jenkins/go/bin:${env.PATH}"
    }
    stages {
        stage('Verificar PATH') {
            steps {
                script {
                    sh 'echo $PATH'  // Imprime el PATH para verificar que go está accesible
                    sh 'go version'   // Verifica que Go está correctamente instalado
                    sh 'ls -l /home/jenkins/go/bin' // Verifica que el binario de Go está en la ruta correcta
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
                sh 'go mod tidy'  // Instala dependencias de Go
            }
        }
        stage('Compilar') {
            steps {
                sh 'go build -o app'  // Compila el proyecto
            }
        }
        stage('Pruebas') {
            steps {
                sh 'go test ./...'  // Ejecuta las pruebas
            }
        }
    }
}







