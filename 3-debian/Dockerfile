FROM python:3.9

RUN apt-get update \
  && apt-get install -y python3-dev libevent-dev \
  && pip install --upgrade pip \
  && pip install \
  pika \
  requests \
  oauth2client \
  python-dateutil \
  nose2 \
  && mkdir -p /var/www

WORKDIR /var/www
