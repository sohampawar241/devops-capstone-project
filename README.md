# devops-capstone-project

[![CI Build](https://github.com/sohampawar241/devops-capstone-project/actions/workflows/ci-build.yaml/badge.svg)](https://github.com/sohampawar241/devops-capstone-project/actions/workflows/ci-build.yaml)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Python 3.9](https://img.shields.io/badge/Python-3.9-green.svg)](https://shields.io/)

This repository contains the completed project for the **IBM DevOps and Software Engineering Capstone Project** (`devops-capstone-project`), part of the **IBM DevOps and Software Engineering Professional Certificate**.

## Project Overview

The Customer Accounts microservice is a production-grade RESTful API service built with Flask, SQLAlchemy, PostgreSQL, and Gunicorn. It includes complete CI/CD automation with GitHub Actions, containerization with Docker, deployment manifests for Kubernetes, defensive security using Flask-Talisman and Flask-CORS, and automated deployment pipelines using Tekton and OpenShift Pipelines.

## Features

- **RESTful Endpoints:** Full CRUD operations for Customer Accounts (`POST /accounts`, `GET /accounts/<id>`, `GET /accounts`, `PUT /accounts/<id>`, `DELETE /accounts/<id>`).
- **Test-Driven Development:** Comprehensive unit tests covering all routes and models with over 95% test coverage.
- **Continuous Integration:** GitHub Actions workflow executing flake8 linting and nosetests against an ephemeral PostgreSQL service container on every push and pull request.
- **Security Hardening:** Secure HTTP response headers (CSP, X-Frame-Options, X-Content-Type-Options, Referrer-Policy) managed via Flask-Talisman, and cross-origin resource sharing configured via Flask-CORS.
- **Containerization:** Production Docker image configured for non-root execution exposing Gunicorn on port 8080.
- **Kubernetes & OpenShift Deployment:** Declarative deployment and service manifests for orchestration on OpenShift.
- **Tekton CD Pipeline:** End-to-end automated continuous deployment pipeline with tasks for workspace cleanup, git clone, flake8 linting, nose testing, Buildah image creation, and OpenShift client deployment.

## License

Licensed under the Apache License, Version 2.0. See [LICENSE](LICENSE) for details.

## Author

**Soham Pawar** (`sohampawar241`)
IBM DevOps and Software Engineering Professional Certificate
