#!/bin/bash

docker-compose run --rm web sh -c "django-admin startproject config ."
docker-compose run --rm web sh -c "python manage.py startapp Groomusers"
touch backend/web/config/local_settings.py
cat source/local_settings.py > backend/web/config/local_settings.py

docker-compose up --build

