FROM python:3.9.5-alpine3.13

RUN apk --update add \
  build-base \
  libffi-dev \
  openssl-dev \
  python-dev \
  py-pip \
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

RUN apk add --no-cache --virtual .build-deps \
  gcc \
  python3-dev \
  musl-dev \
  postgresql-dev \
  && pip install --no-cache-dir psycopg2 \
  && pip install --no-cache-dir psycopg2-binary \
  && apk del --no-cache .build-deps

WORKDIR /var/www
