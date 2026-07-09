pipeline {
    agent any

    stages {

        stage('Clean') {
            steps {
                sh 'mvn clean -q'
            }
        }

        stage('Install') {
            steps {
                sh 'mvn install -DskipTests -q'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test -q'
            }
        }

        stage('Deploy') {
            steps {

                    sh 'docker rm -f b7-java-image || true'
                    sh 'docker build -t b7-java-image .'
                    sh 'docker run --name b7-java-image b7-java-image'

            }
        }
    }
}
