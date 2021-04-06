#!/bin/sh

set -e

python manage.py migrate --no-input

gunicorn helloworld.wsgi:application --bind 0.0.0.0:8000 --workers 3

