FROM python:3-alpine

RUN apk --update add \
  build-base \
  libffi-dev \
  openssl-dev \
  python-dev \
  py-pip \
  nodejs \
  zlib

RUN pip install --upgrade pip \
  && pip install -U \
    pytest \
    python-dateutil \
  && npm install -g nodemon \
  && mkdir -p /var/www

WORKDIR /var/www
