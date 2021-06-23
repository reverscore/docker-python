FROM python:3.8.8-slim-buster

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - \
  && apt-get update \
  && apt-get install -y python3-dev libevent-dev libblas-dev liblapack-dev libatlas-base-dev gfortran \
  && apt install nodejs \
  && pip install --upgrade pip setuptools wheel \
  && pip install \
  pika \
  requests \
  oauth2client \
  python-dateutil \
  nose2 \
  && npm install -g nodemon \
  && mkdir -p /var/www

WORKDIR /var/www
