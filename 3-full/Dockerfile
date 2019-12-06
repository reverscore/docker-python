FROM python:3

RUN apt-get update \
  && apt-get install -y python-pillow python-pil python3-dev

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
  google-api-python-client \
  google-auth \
  google-auth-httplib2 \
  httplib2 \
  hyperlink \
  idna \
  incremental \
  jmespath \
  numpy \
  pandas \
  parsel \
  pyasn1 \
  pyasn1-modules \
  pycparser \
  PyDispatcher \
  PyHamcrest \
  pytz \
  PyYAML \
  queuelib \
  rsa \
  service-identity \
  six \
  Twisted \
  uritemplate \
  urllib3 \
  w3lib \
  xlrd \
  && mkdir -p /var/www

WORKDIR /var/www
