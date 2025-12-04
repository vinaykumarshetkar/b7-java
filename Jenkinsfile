pipeline{
		agent {
  label 'task5node'
}

		stages{
		   			stage(clean){
				steps{
					sh 'mvn clean'
					}
			}
					stage(install){
				steps{
					sh 'mvn  install'
					}
			}
					stage(test){
				steps{
					sh 'mvn test'
					}
					
			}
			 post {
        always {
            step([$class: 'Mailer',
                  notifyEveryUnstableBuild: false,
                  recipients: 'vinaykumarshetkar@gmail.com',
                  sendToIndividuals: false])
        }
    }
		}
	}
