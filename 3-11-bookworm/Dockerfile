FROM python:3.11

RUN apt-get update \
  && apt install -y curl python3-dev libevent-dev libblas-dev jq less zlib1g curl \
  liblapack-dev libatlas-base-dev gfortran git gcc musl-dev \
  && pip install --upgrade pip setuptools wheel
  
RUN apt-get install -y ca-certificates curl gnupg \
  && mkdir -p /etc/apt/keyrings \
  && curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg \
  && echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list

RUN apt-get update && apt-get install nodejs -y

RUN npm install -g nodemon

WORKDIR /var/www
