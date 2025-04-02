FROM python:3.9.21-bookworm

WORKDIR /app

COPY src/ /app  

RUN python -m pip install -r requirements.txt

EXPOSE 80

RUN mkdir -p /tmp/metrics

ENV PROMETHEUS_MULTIPROC_DIR=/tmp/metrics

CMD ["python", "index.py"]

