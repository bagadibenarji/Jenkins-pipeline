# Jenkins pipeline for Petclinic sample application
This is a Jenkins pipeline that explains a set of steps to compile, test, package and publish Docker image to JFrog Artifactory.

# Prerequisites

1) Github repository to keep Dockerfile, Jenkinsfile & Project source code 

2) Jenkins server with Maven and docker plugin installed

3) A JFrog Artifactory account with a Docker repository

4) Credentials for the JFrog Artifactory account set up in Jenkins

# Pipeline Steps
1) Git clone: The pipeline uses the git clone command to clone the project files 

2) Compile: The pipeline uses the mvn compile command to compile the project.

3) Test: The pipeline uses the mvn test command to run the tests for the project.

4) Build Docker Image: The pipeline uses the mvn package command to package the project and the "docker build -t petclinic ." command to build a Docker image.

5) Publish to JFrog Artifactory: The pipeline uses the "docker login" command to log in to the JFrog Artifactory account, "docker tag" command used to tag a docker image with repository url and the "docker push" command to push the image to the JFrog Artifactory Docker repository. Please ref to Jenkinsfile for proper commands.

# Running the pipeline
To run the pipeline, you will need to:

1) Create a Jenkins pipeline job and configure it to use the Jenkinsfile.

2) Add the JFrog Artifactory credentials to Jenkins.

3) Trigger the pipeline by committing changes to the source code repository.
