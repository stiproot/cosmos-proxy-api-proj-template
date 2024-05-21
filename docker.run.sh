#!/bin/sh

docker build -f Dockerfile -t img-cosmos-proxy-api-$1 .

docker run --name cosmos-proxy-api-$1 \
    -p 8005:8001 \
    -e ENVIRONMENT=aks \
    -e KEY_VAULT_URL= \
    -e COSMOS_DATABASE_NAME= \
    -e COSMOS_URL= \
    -it --detach \
    img-cosmos-proxy-api-$1
