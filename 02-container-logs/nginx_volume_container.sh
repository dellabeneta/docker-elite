#!/bin/bash
#criado por Michel Dellabeneta
#script para o 02-container-logs

# 1. Baixar imagem
echo "Baixando imagem Nginx..."
docker pull nginx

# 2. Iniciar container
echo "Iniciando container 'meu-servidor' na porta 8080..."
docker run -d \
  --name meu-servidor \
  -p 8080:80 \
  -v nginx_logs:/var/log/nginx \
  nginx

# Pequena pausa para inicialização
sleep 2

# 3. Listar containers
echo "Containers em execução:"
docker container ls

4. Testar o servidor
echo "Servidor Nginx está ON! Abra no navegador: http://localhost:8080"
echo "Você tem 60 segundos para testar..."
sleep 60

echo "Tempo esgotado! Encerrando..."

# 6. Parar e remover elementos
echo "Parando container..."
docker stop meu-servidor

echo "Removendo container..."
docker container rm meu-servidor

echo "Removendo a imagem..."
docker image rm nginx:latest

echo "O Volume será mantido..."

# 7. Listar todos containers
echo "Containers restantes:"
docker container ls -a

echo "Show! O container foi criado, usado e removido"