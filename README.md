# TalkingLands_Assignment
DevOps Assignment
# Task 1: Infrastructure as Code (IaC)
Scenario:
You are tasked with provisioning a basic web application stack in AWS using Terraform.
Requirements:
1. Deploy an EC2 instance running an Nginx server.
2. Use a security group to allow HTTP (port 80) and SSH (port 22) access.
3. The Nginx server should display a custom webpage with the text: "Deployed via Terraform."
4. Use variables to make the configuration reusable for different environments (e.g., dev, prod).
# Task 2: CI/CD Pipeline
Scenario:
Set up a CI/CD pipeline to build, test, and deploy a simple Node.js application.
Requirements:
1. The pipeline should:
* Run on GitHub Actions or AWS CodePipeline.
* Install dependencies.
* Package the application as a Docker container.
* Deploy the container to a Kubernetes cluster (use Minikube, kind, or a cloud provider).
2. Rollback deployment if any step fails.
# Task 3: Kubernetes Deployment
Scenario:
Deploy a sample Python application on a Kubernetes cluster with monitoring and auto-scaling
enabled.
Requirements:
1. Write Kubernetes manifests for:
* A Deployment with at least 2 replicas.
* A Service to expose the application.
* An Ingress to route HTTP traffic.
2. Configure a HorizontalPodAutoscaler to scale based on CPU usage.
3. Set up monitoring using Prometheus and Grafana. (If known)
4. Create a Grafana dashboard to visualize application metrics.
