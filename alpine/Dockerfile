FROM python:3-alpine

RUN apk --update add build-base libffi-dev openssl-dev python-dev py-pip

RUN pip install --upgrade pip \
  && pip install \
    pymongo \
    nose \
    boto \
    pika \
    pillow \
    requests \
    oauth2client \
    PyOpenSSL \
    gspread \
    python-dateutil \
    cryptography \
    python-intercom \
  && mkdir -p /var/www

WORKDIR /var/www
