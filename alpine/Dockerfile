FROM python:3-alpine

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
  && mkdir -p /var/www

WORKDIR /var/www
