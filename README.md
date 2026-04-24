# 🚀 Two-Tier DevSecOps Deployment on AWS (ECS Fargate)

## 📌 Overview

This project demonstrates a **complete DevSecOps pipeline** for deploying a containerized Flask application on AWS using modern cloud-native practices.

It includes:

* Infrastructure provisioning using Terraform (modular)
* CI/CD pipelines using GitHub Actions
* Secure authentication using OIDC (no AWS keys)
* Container deployment using ECS Fargate
* Load balancing using Application Load Balancer (ALB)
* Monitoring using CloudWatch

---

## 🏗️ Architecture Flow

1. User sends request to ALB
2. ALB forwards traffic to ECS service
3. ECS runs containers using Fargate
4. Containers pull images from ECR
5. Logs are pushed to CloudWatch
6. CI/CD automates build and deployment

---

## 🧠 Tech Stack

### ☁️ AWS

* ECS (Fargate)
* ECR (Container Registry)
* ALB (Load Balancer)
* CloudWatch (Logs & Monitoring)
* IAM (OIDC roles)

### ⚙️ DevOps

* Terraform (IaC)
* GitHub Actions (CI/CD)
* Docker

### 🐍 Backend

* Python (Flask)

---

## 📁 Project Structure

```bash
.
├── app/
│   ├── app.py              # Flask application
│   ├── Dockerfile          # Container image
│   ├── requirements.txt
│   ├── templates/          # HTML UI
│   └── .dockerignore
│
├── terraform/
│   ├── main.tf
│   ├── provider.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── backend.tf
│   │
│   ├── modules/            # Reusable modules
│   └── bootstrap/          # Remote state setup
│
├── .github/
│   └── workflows/
│       ├── infra.yml       # Terraform pipeline
│       └── deploy.yml      # App deployment pipeline
│
├── .gitignore
└── README.md
```

---

## 🔄 CI/CD Pipeline

### 🔹 Infrastructure Pipeline (`infra.yml`)

* Terraform init / plan / apply
* Creates:

  * VPC & Subnets
  * ECS Cluster
  * ALB + Target Groups
  * ECR Repository

---

### 🔹 Application Pipeline (`deploy.yml`)

1. Build Docker image
2. Scan image (Trivy)
3. Push image to ECR
4. Update ECS task definition
5. Deploy to ECS service

---

## 🔐 Security (DevSecOps)

* OIDC authentication (no static AWS credentials)
* IAM role-based access
* Container image scanning
* Terraform remote state protection

---

## 📊 Monitoring

* Logs → CloudWatch Logs
* ECS service metrics
* ALB health checks
* Target group monitoring

---

## 🚀 Deployment Steps

### 1. Clone Repository

```bash
git clone https://github.com/Prashant260/eECS-app-deploy.git
cd eECS-app-deploy
```

---

### 2. Deploy Infrastructure

```bash
cd terraform
terraform init
terraform apply
```

---

### 3. Deploy Application

Push code to trigger CI/CD:

```bash
git push origin main
```

---


## 🎯 Key Highlights

* Fully automated infrastructure (Terraform)
* Secure CI/CD using OIDC (no secrets)
* ECS Fargate deployment (serverless containers)
* ALB with health checks
* CloudWatch observability

---

> “ A containerized Flask application and deployed it using ECS Fargate. Infrastructure is managed using Terraform, and CI/CD is implemented using GitHub Actions with OIDC authentication.
The application is exposed via an ALB and monitored using CloudWatch.”

---

## 🚀 Future Enhancements

* HTTPS (ACM + Route53)
*
* Auto Scaling (ECS Service Auto Scaling)
* Blue/Green deployments
* Multi-environment setup (dev/stage)
* WAF integration

---

## 👨‍💻 Author

**Prashant**
