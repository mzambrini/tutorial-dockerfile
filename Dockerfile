FROM ubuntu:18.04

ARG USER=user
ARG GROUP=group

WORKDIR /work

COPY /entrypoint.sh entrypoint.sh

USER 0

RUN echo USER:${USER}  GROUP:${GROUP} && groupadd ${GROUP} && useradd ${USER} -g ${GROUP} -m \
&& apt-get update && apt-get install -y jq && rm -r /var/lib/apt/lists/* \
&& mkdir /result && chown ${USER}:${GROUP} entrypoint.sh /result && chmod +x entrypoint.sh 

USER ${USER}

VOLUME /result

ENTRYPOINT ["./entrypoint.sh"]

CMD ["Ciao mondo!"]
