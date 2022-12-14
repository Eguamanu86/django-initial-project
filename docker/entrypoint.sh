#!/bin/bash
# python manage.py migrate      # Apply database migrations
if [ "$APP_ENV" == "local" ]        # Collect static files on in DEV
then
   python django-backend/manage.py runserver 0.0.0.0:8000
else
   # production
   python django-backend/manage.py collectstatic --noinput
   # Launch supervisor
   /usr/local/bin/supervisord -n
fi
