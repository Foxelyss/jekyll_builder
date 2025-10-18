FROM ruby:3.4
EXPOSE 4000
ARG USER

RUN groupadd ${USER} && adduser ${USER} --ingroup  ${USER}
RUN mkdir /app

WORKDIR /app
RUN mkdir -p /app/site && chown -R ${USER}:${USER} /app/site
RUN mkdir -p /app/cache && chown -R ${USER}:${USER} /app/cache

COPY build.sh /app/build.sh

USER ${USER}:${USER}

STOPSIGNAL SIGINT
ENTRYPOINT ["bash", "/app/build.sh"]
