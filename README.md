# platform-observability

Enterprise Observability Stack.

![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)
![Docker](https://img.shields.io/badge/docker-ready-blue)
![Kubernetes](https://img.shields.io/badge/k8s-ready-blue)

## Problem
Blockchain infra needs unified observability for metrics, logs, traces to detect issues early.

## Architecture
```mermaid
graph TD
    S[Services] --> P[Prom]
    S --> L[Loki]
    S --> T[Tempo]
    P --> G[Grafana]
    L --> G
    T --> G
    G --> A[Alertmanager]
```

## Components
Prometheus, Grafana, Loki, Tempo, Alertmanager.

## Quick Start
docker compose up

## Demo
See docker-compose.yml

## Screenshots
screenshots/observability-stack.png etc.

## Monitoring
Dashboards, alerts.

## Security
No secrets in compose.

## CI/CD
.github/workflows/ci.yml

## Production Deployment
k8s, persistent volumes.

## Roadmap
- More panels

## Runbooks
docs/runbook.md

## Troubleshooting
docs/troubleshooting.md
