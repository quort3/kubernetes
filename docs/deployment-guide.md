# Deployment Guide

## Start Minikube

```bash
minikube start
```

## Create namespaces

```bash
kubectl apply -f kubernetes/namespace.yaml
```

## Install Helm Chart

Development

```bash
helm install nginx-dev ./helm/nginx-chart \
-n dev \
-f ./helm/nginx-chart/values-dev.yaml
```

Production

```bash
helm install nginx-prod ./helm/nginx-chart \
-n prod \
-f ./helm/nginx-chart/values-prod.yaml
```

## Verify

```bash
kubectl get all -A

helm list -A
```
