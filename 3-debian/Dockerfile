FROM python:3.8.8-buster

RUN apt-get update \
  && apt install -y curl python3-dev libevent-dev libblas-dev \
  liblapack-dev libatlas-base-dev gfortran git \
  && curl -sL https://deb.nodesource.com/setup_14.x | bash - \
  && apt-get update \
  && apt install -y nodejs \
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
