#!/bin/bash

# Выполнение миграций базы данных
python manage.py migrate

# Сбор статических файлов Django
python manage.py collectstatic --noinput

# Запуск Gunicorn для обслуживания приложения
exec gunicorn --bind 0.0.0.0:9000 kittygram_backend.wsgi
