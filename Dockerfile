FROM ubuntu
RUN apt-get update \
	&& apt-get install -y nginx \
	&& mkdir /comandos
ADD entrypoint.sh /comandos
CMD /comandos/entrypoint.sh
