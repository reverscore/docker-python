FROM python:3-alpine

RUN pip install --upgrade pip \
  && pip install pymongo nose boto pika \
  && mkdir -p /var/www

WORKDIR /var/www
