Install Docker on the EC2 instance. 
https://docs.docker.com/engine/install/ubuntu/

Check if git is already installed 
git --version 
https://www.atlassian.com/git/tutorials/install-git

Install Docker and Docker-Pipeline Plugins in Jenkins

Create ECR(Elastic Container Registry just like Azure Container Registry ACR).
Give name (jenkins-pipeline)
left other as default. 

Create IAM role with AmazonEC2ContainerRegistryFullAccess policy and attach with Jenkins EC2 instance
Go to IAM and Create the role with the specified policy mentioned above. 
Go to EC2 instance and click on action, in security tab choose modify role and select the role which you just created.  

Go to EC2 instance and install aws cli 
$ sudo apt install awscli
$ aws configure
$ sudo usermod -a -G docker ubuntu
$ sudo usermod -aG docker jenkins
$ sudo systemctl restart jenkins
$ docker info
$ systemctl status docker
$ systemctl status jenkins
Go back to ECR and click on View Push Command
Copy the first command and run it on the EC2 instance on which you installed jenkins and docker. 

$ aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 769126752719.dkr.ecr.ap-northeast-1.amazonaws.com

Create package.json
Create Server.js
Create Dockerfile
Create Jenkinsfile_Docker (make appropriate modifications according to your values)
Create a Repo at Github and move all above Four files to the repo

Come to Jenkins UI. 
Create New Pipeline and Provide Project Github repo URL
Select GITScm polling
Configure the pipeline to run from the jenkinsfile which we placed on the repo. 
Run build and monitor ECR. 
