# Estágio 1: Compila o programa Go
FROM golang:1.22-alpine AS builder

WORKDIR /app

# Copia os arquivos do módulo Go e baixa as dependências
COPY go.mod ./
RUN go mod download -json

# Copia o código-fonte e compila o binário
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -o /converter

# Estágio 2: Cria a imagem final leve com FFmpeg
FROM alpine:latest

# Instala o FFmpeg (necessário para a conversão)
RUN apk add --no-cache ffmpeg

# Copia o binário compilado do estágio anterior
COPY --from=builder /converter /converter

# Define o diretório de trabalho e o entrypoint
WORKDIR /data
ENTRYPOINT ["/converter"]