pipeline {
    agent any

    stages {
        stage('Construir Imagen Docker') {
            steps {
                script {
                    // Construye la imagen Docker desde el Dockerfile en el repositorio
                    docker.build('mi-imagen-go', './')  // './' indica que el Dockerfile está en la raíz
                }
            }
        }

        stage('Descargar código') {
            steps {
                git 'https://github.com/chris35franco/test-Go'
            }
        }

        stage('Compilar') {
            steps {
                script {
                    // Ejecuta Go build dentro del contenedor Docker
                    docker.image('mi-imagen-go').inside {
                        sh 'go build'
                    }
                }
            }
        }

        stage('Pruebas') {
            steps {
                script {
                    // Ejecuta Go test dentro del contenedor Docker
                    docker.image('mi-imagen-go').inside {
                        sh 'go test ./...'
                    }
                }
            }
        }
    }
}


