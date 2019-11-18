FROM python:3-alpine

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

RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev

WORKDIR /var/www
