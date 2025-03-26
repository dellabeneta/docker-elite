
#ROM linuxserver/ffmpeg:latest
FROM jrottenberg/ffmpeg:4.1-alpine


COPY convert.sh /usr/local/bin/convert.sh


RUN chmod +x /usr/local/bin/convert.sh

WORKDIR /videos


ENTRYPOINT ["/usr/local/bin/convert.sh"]

#combinei o ENTRYPOINT com o CMD para permitir que o usuário possa passar parâmetros para o script

CMD ["default.mp4", "mp4"]