#!/bin/bash
set -e

CONTAINER_NAME=postgres
VOLUME_NAME=database

if [ $(docker container ls -aqf name="$CONTAINER_NAME" | wc -l) -gt 0 ]; then
  docker container rm $(docker container stop "$CONTAINER_NAME")
fi

if [ $(docker volume ls -qf name="$VOLUME_NAME" | wc -l) -gt 0 ]; then
  docker volume rm "$VOLUME_NAME"
fi

docker container run -d \
  --name "$CONTAINER_NAME" \
  -e POSTGRES_USER=root \
  -e POSTGRES_PASSWORD=toor \
  -e POSTGRES_HOST_AUTH_METHOD=trust \
  -e POSTGRES_DB=application \
  -v "$VOLUME_NAME":/var/lib/postgresql/data \
  -p 5432:5432 \
  postgres:latest

docker cp init.sql postgres:/

#winpty docker container exec -it \
#  "$CONTAINER_NAME" \
#  psql -U root -d application -h localhost -p 5432 -f /init.sql
