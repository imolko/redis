FROM redis:6-alpine

MAINTAINER Yohany Flores <yohanyflores@gmail.com>

LABEL com.imolko.group=imolko
LABEL com.imolko.type=base

# Instalamos cliente bash para rabbitmq
# RUN set -x && apt-get update && apt-get install -y amqp-tools --no-install-recommends && rm -rf /var/lib/apt/lists/*

# Copiamos la configuracion
COPY config /config

# Por defecto cargamos nuestro redis.conf
CMD [ "redis-server", "/config/redis.conf" ]

