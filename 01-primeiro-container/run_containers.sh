#!/bin/bash
#criado por Michel Dellabeneta

# 1. Baixar imagem
echo "Baixando imagem Nginx..."
docker pull nginx

# 2. Iniciar container
echo "Iniciando container 'meu-servidor' na porta 8080..."
docker run -d --name meu-servidor -p 8080:80 nginx

# Pequena pausa para inicialização
sleep 2

# 3. Listar containers
echo "Containers em execução:"
docker conainer ls

# 4. Testar o servidor
echo "Servidor Nginx está ON! Abra no navegador: http://localhost:8080"
echo "Tempo para testar de 60 segundos"
sleep 60

echo "Tempo esgotado! Encerrando..."

# 6. Parar e remover
echo "Parando container..."
docker stop meu-servidor

echo "Removendo container..."
docker container rm meu-servidor

# 7. Listar todos containers
echo "Containers restantes:"
docker container ls -a

echo "Ciclo completo concluído! Container foi criado, usado e removido"