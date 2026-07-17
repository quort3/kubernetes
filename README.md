# Kubernetes DevOps Demo

[![Helm Chart Validation](https://github.com/quort3/kubernetes/actions/workflows/helm-check.yml/badge.svg)](https://github.com/quort3/kubernetes/actions/workflows/helm-check.yml)

A production-style Kubernetes project demonstrating deployment using Helm, Namespaces, Ingress and environment-specific configurations.

---

## 🚀 Stack

- Kubernetes
- Helm
- Docker
- Nginx
- Minikube
- Git

---

## 📂 Project Structure

```text
.
├── docs/
├── helm/
│   └── nginx-chart/
├── kubernetes/
│   ├── namespace.yaml
│   └── ingress.yaml
└── screenshots/
```

---

## ⚙️ Features

- Helm Chart
- Separate dev/prod values
- Kubernetes Namespaces
- Deployment
- Service
- Ingress
- NodePort Service
- Resource Requests & Limits

---

## 📦 Deploy

Create namespaces

```bash
kubectl apply -f kubernetes/namespace.yaml
```

Deploy DEV

```bash
helm install nginx-dev ./helm/nginx-chart \
-n dev \
-f ./helm/nginx-chart/values-dev.yaml
```

Deploy PROD

```bash
helm install nginx-prod ./helm/nginx-chart \
-n prod \
-f ./helm/nginx-chart/values-prod.yaml
```

---

## 📖 Documentation

More information:

- docs/architecture.md
- docs/deployment-guide.md

---

## 👨‍💻 Author

Andrii Semenov
