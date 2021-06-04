FROM python:3.9.5-alpine3.13

RUN apk --update add \
  build-base \
  libffi-dev \
  openssl-dev \
  python-dev \
  py-pip \
  zlib

RUN pip install --upgrade pip \
  && pip install -U \
  pytest \
  python-dateutil \
  && mkdir -p /var/www

RUN apk add --no-cache --virtual .build-deps \
  gcc \
  python3-dev \
  musl-dev \
  postgresql-dev \
  make

WORKDIR /var/www
