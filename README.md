## Architecture
<img src="./Diagram/blue-green.svg" alt="Diagram">





🚀 Blue-Green CI/CD Deployment with Infrastructure Automation and Kubernetes Management
I’m thrilled to share one of my recent projects: a Blue-Green CI/CD Deployment Pipeline integrated with Infrastructure Automation and Kubernetes Management on Amazon EKS.
This project combines Terraform, Kubernetes, and robust CI/CD practices to streamline deployment workflows, ensuring seamless environment switching, enhanced security, and quality assurance.
🔗 GitHub Repository: https://lnkd.in/gHGKq9Gk


🌐 Infrastructure Deployment
Leveraging Terraform for infrastructure as code (IaC):
Created a VPC with subnets, internet gateway, and a properly configured route table.
Designed security groups for EKS clusters and worker nodes with IAM roles to manage permissions.
Deployed an Amazon EKS cluster and added worker nodes to manage Kubernetes workloads efficiently.
This automated setup enabled quick, repeatable, and reliable infrastructure provisioning.


🔄 Pipeline Configuration
A robust CI/CD pipeline was built to automate every stage of the deployment:
Integrated tools like Maven3, Docker, Trivy, and SonarQube.
Configured critical environment variables (DEPLOY_ENV, DOCKER_TAG, SWITCH_TRAFFIC) for flexible and dynamic deployments.


🛠️ Pipeline Stages
The pipeline automates the entire application lifecycle:
1. Git Checkout: Clones the repository from GitHub.
2. Compile: Compiles the project using Maven.
3. Tests: Executes tests (can be skipped with a flag).
4. Trivy FS Scan: Scans the filesystem for vulnerabilities.
5. SonarQube Analysis: Analyzes code quality and enforces quality gates.
6. Build: Packages the application into a deployable artifact.
7. Publish Artifacts to Nexus: Uploads the artifact to a Nexus repository.
8. Docker Build & Push: Builds and pushes Docker images to Docker Hub.
9. Trivy Image Scan: Scans the Docker image for vulnerabilities.


🚀 Deployment Stages
MySQL Deployment: Configures and deploys MySQL in Kubernetes.
Service Deployment: Applies service definitions for backend/frontend.
Blue-Green Deployment: Dynamically deploys to blue or green environments.
Traffic Switching: Seamlessly redirects traffic between environments using Kubernetes service patches.
Verification: Validates application health, services, and pods post-deployment.


🔑 Key Features
Dynamic Traffic Switching: Enables seamless, zero-downtime deployments between environments.
Security at Core: Scans for vulnerabilities in both filesystem and Docker images.
Quality Assurance: Enforces code quality gates with SonarQube.
End-to-End Automation: From code to deployment, everything is fully automated.
