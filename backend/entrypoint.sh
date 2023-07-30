#!/bin/bash

#!/bin/sh


python manage.py migrate
python manage.py collectstatic --no-input
gunicorn --bind 0:9000 kittygram_backend.wsgi


exec "$@"