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
					sh 'mvn  install -DskipTests -q'
					}
			}
			stage(test){
				steps{
					sh 'mvn test -q'
					}
			}					
			stage(deploy){
				steps{
					dir('target'){
					sh 'docker rm -f b7-java-image'
					sh 'docker build -t b7-java-image .'
					sh 'docker run b7-java-image'
				}
				}

		}
		}
	
