tenha obviamente o docker instalado no seu SO.

1. Clone o repositório do projeto (se aplicável)
git clone https://github.com/dellabeneta/docker-elite.git
cd docker-images/04-multistage-build/

2. Construa a imagem
docker compose build

3. Converta um vídeo
docker compose run --rm converter video.mp4 avi

Notas Importantes

Permissões de Arquivo:

Se o container criar arquivos como root, use -u $(id -u):$(id -g) no comando docker compose run para manter as permissões do host:

```
docker compose run --rm -u $(id -u):$(id -g) converter video.mp4 avi
```

Atualizações:

Se você modificar o código Go, reconstrua a imagem com docker compose build.

