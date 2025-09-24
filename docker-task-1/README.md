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

⚪ **_For some help you can reach Mate Academy mentors_**
