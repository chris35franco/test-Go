pipeline {
    agent { label 'Go' }

    stages {
        stage('Construir Imagen Docker') {
            steps {
                script {
                    docker.build('mi-imagen-go', './')
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



