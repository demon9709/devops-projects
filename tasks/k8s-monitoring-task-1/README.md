# Kubernetes Deployment with Monitoring

📊 **Difficulty: ⭐⭐⭐ ☆ ☆ (3/5)**  

---

## Description
You are given a **Python Flask application** in this repository (`app.py` + `requirements.txt`).  
Your task is to containerize the app, deploy it into a **Kubernetes cluster**, and set up **basic monitoring**.  

This task simulates a real-world DevOps scenario where you need to take existing application code and create the infrastructure around it.

---

## Requirements

### Application
- The Flask app is already provided in this repo.
- It runs on port `8000`.
- You must create a **Dockerfile** and build the image.

### Kubernetes Objects
You must create and apply the following manifests:
- **Deployment**: 
  - Runs **2 replicas** of the app.  
  - Includes `livenessProbe` and `readinessProbe`.  
- **Service**: 
  - Type `ClusterIP`.  
  - Exposes the app inside the cluster.  
- **ConfigMap**: 
  - Stores environment variables (e.g., `PORT`).  
- **Secret**: 
  - Stores any sensitive values (e.g., fake password).  
- **HorizontalPodAutoscaler (Optional)**: 
  - Scales replicas based on CPU usage.

### Monitoring
- Deploy **Prometheus** and **Grafana** in the cluster.  
- Expose system & pod-level metrics.  
- Build dashboards for:
  - Pod CPU and memory usage.  
  - Application availability (replicas up).  
  - HTTP request stats.  

### Logging
- Logs must be visible via:
  ```bash
  kubectl logs <pod-name>

---

## ✅ Definition of Done

The task is considered complete if:

1. The app runs inside Kubernetes with at least **2 healthy replicas**.
2. `livenessProbe` and `readinessProbe` work correctly (pods restart if unhealthy).
3. The app is reachable inside the cluster through the `Service`.
4. **Prometheus** scrapes metrics **successfully**.
5. **Grafana** shows dashboards with **CPU/memory metrics**.
6. Logs from the app are accessible with `kubectl logs`.

### Extra ⭐

1. Configure an `Ingress` to expose the app externally.
2. Add **Grafana alerts** for failed health checks or high error rates.
3. Configure `HorizontalPodAutoscaler` to auto-scale pods.
---

⚪ **_For some help you can reach Mate Academy mentors_**

