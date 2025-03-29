FROM python:3.11-slim-bookworm

#para ajuda com logs, dispensável nesse momento se preferir
ENV PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1

RUN addgroup --system appgroup && \
    adduser --system --no-create-home --group appuser

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir --no-warn-script-location -r requirements.txt

COPY . .

RUN chown -R appuser:appgroup /app

USER appuser

EXPOSE 5000

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]