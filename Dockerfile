FROM ubuntu
RUN apt-get update \
	&& apt-get install -y nginx \
	&& mkdir /comandos \
	&& mkdir /datos
ADD entrypoint.sh /comandos
VOLUME /datos
CMD /comandos/entrypoint.sh
