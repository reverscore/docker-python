FROM python:3.9.5-alpine3.13

RUN apk add --no-cache --virtual .build-deps gcc libc-dev libxslt-dev \
  && apk add --no-cache libxslt build-base \
  gcc \
  g++ \
  git \
  libffi-dev \
  libjpeg-turbo-dev \
  libxslt-dev \
  make \
  musl-dev \
  nodejs \
  npm \
  openssl-dev \
  py-pip \
  postgresql-dev \
  python3-dev \
  zlib \
  zlib-dev \
  && pip install --upgrade pip \
  && pip install -U \
  pytest \
  pika \
  requests \
  oauth2client \
  nose2 \
  python-dateutil \
  && npm install -g nodemon \
  && mkdir -p /var/www \
  && pip install --no-cache-dir psycopg2 \
  && pip install --no-cache-dir psycopg2-binary \
  && apk del --no-cache .build-deps

WORKDIR /var/www
