FROM python:3

RUN apt-get update \
  && apt-get install -y python3-dev libevent-dev

RUN pip install --upgrade pip setuptools wheel \
  && pip install \
  pika \
  requests \
  oauth2client \
  python-dateutil \
  nose2 \
  && mkdir -p /var/www

WORKDIR /var/www
