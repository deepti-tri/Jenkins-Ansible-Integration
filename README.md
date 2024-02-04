SampleWebApplication
====================
## System Architecture

![image](https://github.com/deepti-tri/Jenkins-Ansible-Integration/assets/100620410/b487efdc-5f44-4882-a771-fe08bde52e08)
====================
###  Key Steps in the Pipeline
#### Scenario
Run Ansible Playbooks from Jenkins to automate infrastructure provisioning and application deployment.

#### Prerequisites
Set up Amazon EC2 instances for Jenkins, Ansible Control Node and the Managed Node.
Create IAM Role for secure access to AWS services.
Enable inbound traffic on desired ports.
Configure Ansible inventory and users on the Control and Managed Nodes.

#### Integration with Jenkins
Integrate Ansible Control Node and Docker server with Jenkins using the Publish Over SSH plugin.
Configure a Jenkins job for building, testing, and uploading artifacts to the Ansible Server (Control Node).

#### Docker Image Creation
Install Docker on both the nodes, and start the service.
Create the Dockerfile to build Docker images incorporating the application's .war file.
Implement an Ansible Playbook to build and push Docker images to Docker Hub (registry).

#### Deployment Automation
Run an Ansible Playbook to pull Docker images from the registry and deploy containers on specified hosts (Managed Node).
Reconfigure the Jenkins job to deploy the Docker container using the Ansible Playbooks.
