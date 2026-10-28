FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

RUN python -m pip install --upgrade pip wheel && \
    pip install -r requirements.txt

COPY service ./service

RUN useradd -m -r service && \
    chown -R service:service /app

USER service

ENV PORT 8080
EXPOSE 8080

CMD ["gunicorn", "--bind=0.0.0.0:8080", "--log-file=-", "service:app"]
