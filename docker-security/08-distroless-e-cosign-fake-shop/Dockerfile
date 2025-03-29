# Estágio de construção (builder)
FROM python:3.11-slim-bookworm as builder

# Cria usuário e grupo com UID/GID fixos para consistência
RUN addgroup --gid 1000 appgroup && \
    adduser --uid 1000 --gid 1000 --disabled-password --no-create-home appuser

WORKDIR /app

# Configura um virtual environment isolado
RUN python -m venv /app/venv
ENV PATH="/app/venv/bin:$PATH"

# Instala dependências
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia a aplicação
COPY . .

# ----------------------------
# Estágio final (runtime)
FROM cgr.dev/chainguard/python

# Configura ambiente seguro
ENV PYTHONUNBUFFERED=1 \
    PATH="/app/venv/bin:$PATH"

WORKDIR /app

# Copia o virtual environment e código com permissões corretas
COPY --from=builder --chown=1000:1000 /app/venv /app/venv
COPY --from=builder --chown=1000:1000 /app /app

# Usa usuário não-root pré-definido (1000:1000)
USER 1000:1000

EXPOSE 5000

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]