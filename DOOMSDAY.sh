#!/bin/bash

echo "Iniciando a limpeza completa do Docker..."

# Remover todos os containers 
echo "Removendo todos os containers..."
docker ps -a -q | xargs -r docker rm -f 2>/dev/null

# Remover todas as imagens 
echo "Removendo todas as imagens..."
docker images -q | xargs -r docker rmi -f 2>/dev/null

# Remover todos os volumes 
echo "Removendo todos os volumes..."
docker volume ls -q | xargs -r docker volume rm 2>/dev/null

# Remover todas as redes não padrão 
echo "Removendo todas as redes não padrão..."
docker network ls --format '{{.ID}} {{.Name}}' | grep -v -E '\s(bridge|host|none)$' | awk '{print $1}' | xargs -r docker network rm 2>/dev/null

# Limpar o cache do builder 
echo "Limpando o cache do builder..."
docker-builder prune -a -f 2>/dev/null

echo "Limpeza completa do Docker concluída!"