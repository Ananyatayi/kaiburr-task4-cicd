# 🚀 Task 4 – CI/CD Pipeline (Kaiburr Assignment)

This task implements a **Continuous Integration and Continuous Deployment (CI-CD)** pipeline using **GitHub Actions** for the JobManager REST API application.

---

## 🧩 Objective
Create a CI-CD pipeline that:
- Builds the Java Spring Boot application with **Maven**
- Builds a **Docker image** automatically after a successful build
- (Optional) Publishes the Docker image to Docker Hub / GHCR

---

## 🏗️ Workflow Overview

| Step | Job Name | Purpose |
|------|-----------|----------|
| 1️⃣ | **Build with Maven** | Compiles and packages the Spring Boot app into a `.jar` |
| 2️⃣ | **Docker Build** | Builds a Docker image using the `Dockerfile` |
| 3️⃣ | *(Optional)* **Docker Push** | Pushes the built image to Docker Hub or GHCR |

Workflow file:  
`.github/workflows/ci.yml`

---

## ⚙️ Technologies Used
- **GitHub Actions** – CI/CD automation  
- **Maven** – Java build & dependency manager  
- **Docker** – Containerization  
- **Spring Boot 3.3.4** – REST API framework  

---

## 🧱 Build & Deploy Flow

```mermaid
graph TD
A[Code Push to main branch] --> B[Maven Build & Package]
B --> C[Upload JAR Artifact]
C --> D[Docker Build]
D --> E[Optional Docker Push]
E --> F[Image available on Docker Hub / GHCR]
