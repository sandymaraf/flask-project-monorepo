# Flask Application

Simple Python Flask application used for the DevOps GitOps lab.

This service exposes a basic HTTP API and a health check endpoint.

## Endpoints

### Health Check

GET /health

Example:

curl http://localhost:8080/health

Response:

ok

---

## Local Development

Install dependencies:

pip install -r requirements.txt

Run locally:

python app.py

Application will start on:

http://localhost:8080

---

## Docker

Build image:

docker build -t flask-project .

Run container:

docker run -p 8080:8080 flask-project