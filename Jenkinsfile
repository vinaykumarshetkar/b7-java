pipeline{
		agent any

		stages{
		   			stage(clean){
				steps{
					sh 'mvn clean -q'
					}
			}
stage(install){
				steps{
					sh 'mvn  install -DskipTests'
					}
			}
			stage(test){
				steps{
					sh 'mvn test -q'
					}
					
					post {
  always {
    archiveArtifacts artifacts: 'target/*.jar', followSymlinks: false
					
					junit 'target/surefire-reports/*.xml'
  }
}
			}
		}
	}
