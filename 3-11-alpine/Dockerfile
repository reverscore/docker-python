FROM python:3.11-alpine
RUN apt-get update \
  && apt install -y curl python3-dev libevent-dev libblas-dev jq less zlib1g curl \
  liblapack-dev libatlas-base-dev gfortran git gcc musl-dev \
  && curl -sL https://deb.nodesource.com/setup_14.x | bash - \
  && apt-get update \
  && apt install -y nodejs npm \
  && pip install --upgrade pip setuptools wheel \
  && pip install \
  pika \
  requests \
  oauth2client \
  python-dateutil \
  nose2 \
  python-json-logger \
  && npm install -g nodemon \
  && mkdir -p /var/www

WORKDIR /var/www
