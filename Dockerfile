FROM ubuntu:18.04

ARG USER=user
ARG GROUP=group

WORKDIR /work

COPY /entrypoint.sh entrypoint.sh

USER 0

RUN \
groupadd ${GROUP} \
&& useradd ${USER} -g ${GROUP} -m \
&& mkdir /result \
&& chown ${USER}:${GROUP} entrypoint.sh /result \
&& chmod +x entrypoint.sh 

USER ${USER}

VOLUME /result

ENTRYPOINT ["./entrypoint.sh"]

CMD ["Ciao mondo!"]
