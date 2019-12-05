FROM python:3

RUN apt-get update \
  && apt-get install -y python-pillow python-pil python3-dev libevent-dev python-lxml

RUN pip install --upgrade pip \
  && pip install \
  awscli \
  pymongo \
  nose \
  boto3 \
  pika \
  pillow \
  requests \
  oauth2client \
  PyOpenSSL \
  unicodecsv \
  gspread \
  python-dateutil \
  python-intercom \
  cloudinary \
  nose2 \
  && mkdir -p /var/www

WORKDIR /var/www
