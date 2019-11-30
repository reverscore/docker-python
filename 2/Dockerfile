#
# NOTE: THIS DOCKERFILE IS GENERATED VIA "update.sh"
#
# PLEASE DO NOT EDIT IT DIRECTLY.
#

FROM python:2

RUN apt-get update \
  && apt-get install -y python-pillow python-pil python-dev

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
  python-intercom \
  cloudinary \
  && mkdir -p /var/www

WORKDIR /var/www
