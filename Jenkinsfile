pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git branch: 'main', credentialsId: 'a4f6fdfa-6373-48ab-aa7a-d20e706d638e', url: 'https://github.com/bagadibenarji/jenkins-pipeline.git'
            }
        }
        stage('Compile') {
            steps {
                sh 'cd spring-petclinic && mvn compile'
            }
        }
        stage('Test') {
            steps {
                sh 'cd spring-petclinic && mvn test'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'cd spring-petclinic && mvn package'
                sh 'docker build -t petclinic .'
            }
        }
	stage('Publish to JFrog Artifactory') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'jfrog1', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    sh 'docker login bbagadi.jfrog.io -u $USERNAME -p $PASSWORD'
		    sh 'docker tag petclinic bbagadi.jfrog.io/pet-clinic-docker/petclinic'
                    sh 'docker push bbagadi.jfrog.io/pet-clinic-docker/petclinic'
                }
            }
        }
    }
}
