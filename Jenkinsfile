pipeline {

	agent any

	environment {

		//DTR credential environmental variable to login to DTR

		DOCKER_CREDS = credentials('DOCKER_Credentials')

		

		// repository details

		def dev_repo_name="lanka-assessment-project"

		

	}

	

	options {

		buildDiscarder(logRotator(daysToKeepStr: '5', numToKeepStr: '10'))    

	 }

 

	

	stages {

		  

		stage('Code Build') {

			steps {

				script {

					echo 'Code build'

					sh "mvn clean package"

				}

			}

		}

		

		stage('Code Test') {

			steps {

				script {

					echo 'Code Test'

					sh "mvn test"

				}

			}

		}

		

		stage('Build Artifacts') {

			steps {

				script {

					echo 'Build Artifacts'

					sh "mvn install"

				}

			}

		}

		

		stage('Build Docker Image') {

			steps {

				script {

					echo 'Build Artifacts'
					sh "docker build -t $dev_repo_name ."

				}

			}

		}

	  

		stage('Push to docker hub') {

			steps {

				script {

					echo 'Push to docker hub'

					sh "docker login -u $DOCKER_CREDS_USR -p $DOCKER_CREDS_PSW"
	
					sh "docker tag $dev_repo_name prasadlanka/$dev_repo_name:latest"
					sh "docker push prasadlanka/$dev_repo_name:latest"
					sh "docker rmi -f $dev_repo_name:latest"
					sh "docker rmi -f prasadlanka/$dev_repo_name:latest"

				}

			}

		}

	

	} //stages

			    

} // pipeline
