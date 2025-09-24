# Task 1: Advanced Dockerfile

📊 **Difficulty: ⭐ ☆ ☆ ☆ ☆ (1/5)**  

---

## Description
Create a **Dockerfile** for a Python web application (Flask API) that returns `"Hello, DevOps with Gunicorn!"`.  
The goal is not only to run the app, but also to build the image in a more **production-ready style**.  

---

## Requirements
1. Use a **multi-stage build**:
   - Stage 1: install dependencies in the builder image.
   - Stage 2: run the app from a minimal image (`python:3.10-slim`).
2. The app must run with **Gunicorn**, not with `flask run`.
3. A `.dockerignore` must be included to exclude unnecessary files.
4. The container must run on port **8000**.
5. The image must be optimized (no cache, minimal layers).  

---

## ✅ Definition of Done

1. The task is considered completed if:
2. The Docker image builds successfully without errors.
3. The container runs and is accessible at `http://localhost:8000`.


### Extra ⭐

1. Reduce image size further (e.g. use python:3.10-alpine).
2. Add a HEALTHCHECK in Dockerfile.
3. Create a docker-compose.yml to run the app with port mapping and a volume.

The response shows: "Hello, DevOps with Gunicorn!"

---

⚪ **_For some help you can reach Mate Academy mentors_**
