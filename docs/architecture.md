# Architecture

```
                    Browser
                       │
                       ▼
                  Kubernetes
                       │
                  Ingress
                       │
          ┌────────────┴────────────┐
          ▼                         ▼
      Namespace: dev          Namespace: prod
          │                         │
          ▼                         ▼
      Deployment              Deployment
          │                         │
          ▼                         ▼
       Service                  Service
          │                         │
          ▼                         ▼
        Pods                     Pods
```

The application is deployed using Helm.

Separate values files are used for development and production environments.
