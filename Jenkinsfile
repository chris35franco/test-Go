pipeline {
    agent { label 'Go' }  // usa el nodo con la etiqueta 'Go'

    stages {
        stage('Descargar código') {
            steps {
                git 'https://github.com/chris35franco/test-Go'
            }
        }

        stage('Construir Imagen Docker') {
            steps {
                script {
                    docker.build('mi-imagen-go', './')  // ahora sí tiene acceso al Dockerfile
                }
            }
        }

        stage('Compilar') {
            steps {
                script {
                    docker.image('mi-imagen-go').inside {
                        sh 'go build'
                    }
                }
            }
        }

        stage('Pruebas') {
            steps {
                script {
                    docker.image('mi-imagen-go').inside {
                        sh 'go test ./...'
                    }
                }
            }
        }
    }
}


