FROM python:3

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - \
  && apt-get update \
  && apt-get install -y python3-dev libevent-dev \
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
