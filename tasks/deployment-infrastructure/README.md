# 🐍 DevOps Infrastructure Deployment Task

## 🎯 Goal
Deploy a **Python REST API** application into a **Kubernetes cluster** on `AWS`,  
with persistent storage, CI/CD pipeline, and monitoring.  

📊 **Difficulty: ⭐ ⭐ ⭐ ⭐ ⭐ (5/5)**  

---

## 📌 Requirements

### 1. Application
- The app is a **FastAPI REST API** (already provided in `app/` folder).  
- It requires a `Postgres` database for persistence.  
- Dependencies are listed in `requirements.txt`.  

### 2. Containerization
- Write a `Dockerfile` for the Python app.  
- Optimize it using multi-stage build.  
- Ensure `.dockerignore` is used to exclude unnecessary files.  

### 3. Infrastructure (Terraform)
- Provision the following resources in AWS:
  - **EKS cluster** (managed Kubernetes).
  - **RDS Postgres** database.
  - **S3 bucket** (for storing logs or static files).

### 4. Kubernetes Deployment
- Create:
  - `Deployment`
  - `Service` (ClusterIP)
  - `Ingress` (exposed via ALB Ingress Controller).
- Add:
  - `ConfigMap` (DB host, etc.)
  - `Secret` (DB password)
  - `Horizontal Pod Autoscaler` (2 → 5 replicas)
  - `liveness` and `readiness probes`.

### 5. CI/CD
- Use **GitHub Actions** to:
  1. Build & push Docker image to ECR.
  2. Run tests.
  3. Deploy to EKS.

### 6. Monitoring & Logging
- Deploy `Prometheus` + `Grafana` in the cluster.  
- Expose a dashboard with:
  - API CPU/RAM usage
  - Postgres connections
  - HTTP request rate
- Logs → ship to `CloudWatch` or local alternative.

---

## ✅ Definition of Done

The task will be considered completed if:
1. `terraform apply` provisions AWS infra successfully.
2. API runs in EKS and scales under load.
3. API reachable via **HTTP Ingress (ALB)**.
4. Grafana dashboard displays live metrics.
5. CI/CD pipeline runs on every commit and deploys the app.

---

## 💰 Cost-saving tips
- Use only `t3.micro` or `t3.small` instances  
- Deploy only in `us-east-1`  
- Destroy resources after finishing: `terraform destroy`  
- Prefer local setup (`minikube`, `kind`) if AWS is not required

---

⚪ **_For some help you can reach Mate Academy mentors_**
