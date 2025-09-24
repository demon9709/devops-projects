# AWS Infrastructure Setup Task 1  

📊 **Difficulty: ⭐⭐⭐⭐☆ (4/5)**  

---

## Infrastructure Setup with EFS, ECS and ALB  

### Objective  
Create a simple **AWS** infrastructure using **IaC (CloudFormation or Terraform)** to deploy a basic web application. Utilize Amazon EFS to store the **HTML** page content and Amazon **ECS** for containerized deployment.  

---

## Requirements  

### Amazon EFS  
- Create an **Amazon EFS file system** named `tm-devops-test-efs.`  
- Ensure that the **EFS file system** is mounted on the **ECS instances** to store the **HTML** content.  
- Use appropriate security settings for the **EFS**.  

### Amazon ECS  
- Define an **ECS** task definition that runs a **Docker container**.  
- Use a public Docker image of the **Nginx** web server.  
- Mount the **EFS file system** to the container to serve the **HTML** content.  
- Configure the **ECS service** to run 1 task.  

### ALB  
- Create an ALB named `tm-devops-test-alb.`  
- Configure the ALB listener on port `80` to forward traffic to the **ECS service**.  
- Implement health checks on the **ALB** to ensure the **ECS** service's availability.  

### Security Group  
- Create security groups for both the **ECS** instances and the **ALB**.  
- Allow incoming traffic on port 80 to the **ECS** instances from the **ALB**.  
- Configure appropriate security settings for the **ALB**.  

### Web Application  
- Create a simple **HTML page** with the content: **"Devops rules the world!"**  
- Upload this **HTML page** to the **EFS** file system.  

---

## Submission Requirements  
1. Infrastructure as Code (Terraform or CloudFormation).  
2. Deployment instructions (Step-by-step).  
3. An infrastructure architecture diagram (Lucidchart, Drawio, etc).  

---

## Evaluation Criteria  
1. Level of detail and correctness of the implementation.  
2. Functionality and compliance with the specified requirements.  
3. Follow AWS best practices for security, resource management, and code organization.  

---

⚪ **_For some help you can reach Mate Academy mentors_**
