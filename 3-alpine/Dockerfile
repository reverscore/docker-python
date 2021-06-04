FROM python:3.9.5-alpine3.13

RUN apk --update add \
  build-base \
  libffi-dev \
  openssl-dev \
  py-pip \
  zlib \
  && pip install --upgrade pip \
  && pip install -U \
  pytest \
  python-dateutil \
  && mkdir -p /var/www \
  && apk add --no-cache --virtual .build-deps \
  gcc \
  musl-dev \
  postgresql-dev \
  make

WORKDIR /var/www
