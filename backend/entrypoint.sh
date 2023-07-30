#!/bin/bash


python manage.py migrate
python manage.py collectstatic --no-input
cp -r /app/collected_static/. /backend_static/static/
gunicorn --bind 0.0.0.0:9000 kittygram_backend.wsgi
