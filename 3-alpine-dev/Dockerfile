FROM python:3.9.5-alpine3.13

RUN apk add --no-cache --virtual .build-deps  \
  build-base \
  gcc \
  musl-dev \
  libffi-dev \
  openssl-dev \
  py-pip \
  postgresql-dev \
  nodejs \
  npm \
  zlib

RUN pip install --upgrade pip \
  && pip install -U \
  pytest \
  pika \
  requests \
  oauth2client \
  nose2 \
  python-dateutil \
  && npm install -g nodemon \
  && mkdir -p /var/www

RUN pip install --no-cache-dir psycopg2 \
  && pip install --no-cache-dir psycopg2-binary \
  && apk del --no-cache .build-deps

WORKDIR /var/www
