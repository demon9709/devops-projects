# Plan deployment for a web application

📊 **Difficulty: ⭐⭐ ☆ ☆ ☆ (2/5)**  

---

Assignment is to plan the deployment for a web application (for example, a simple Python API) which is intended to operate within a **Kubernetes cluster**.  
The plan has to be detailed and should include the ability to scale, as well as safety and maintenance factors.  


## Requirements

### Application
- The application is a **RESTful API** coded in **Python** and is shipped in a **container**.  
- Persistence for the application is achieved by the use of a **Postgres database**.  
- There is a need for the application program interface to be made available through **HTTP**.  


### Deployment Target
**Kubernetes cluster** (you can use `Minikube`, a managed Kubernetes service like `EKS`, or any other local setup).  


### Plan Contents
- **Infrastructure**: Describe the Kubernetes objects (e.g., `Deployments`, `Services`, `Ingress`, `Secrets`, `ConfigMaps`) and how you plan to structure them.  
- **Containerization**: Discuss how you will perform application containerization (`Dockerfile`, base image choice etc).  
- **Database**: What is your approach to deploying the Postgres database (e.g. using `Helm`, using `StatefulSets`)?  
- **Environment Configuration**: How are you planning to treat environment variables, secrets (for example Postgres credentials), external configuration?  
- **Networking**: How are you going to expose the REST API using APIs provided by Kubernetes networking (`Ingress`, `Service type`, `DNS`)?  
- **Scaling**: Give an API scaling strategy (for example `Horizontal Pod Autoscaler`, resource limits).  
- **Monitoring and Logging**: What is your plan for monitoring.  


---

⚪ **_For some help you can reach Mate Academy mentors_**
