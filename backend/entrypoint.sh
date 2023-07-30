#!/bin/bash

if [ -d "/app/collected_static" ]; then
  cp -r /app/collected_static/. /backend_static/static/
else
  echo "Error: /app/collected_static not found."
  exit 1
fi

python manage.py migrate
python manage.py collectstatic --noinput
