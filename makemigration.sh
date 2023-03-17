#!/bin/bash

docker-compose run --rm web sh -c "django-admin startproject config ."
docker-compose run --rm web sh -c "python manage.py startapp todo"
touch backend/web/config/local_settings.py
cat source/local-settings.py > backend/web/config/local_settings.py

docker-compose up --build

DjangoSettingsFile=/workspace/DevEnv/backend/config/

Secret_Key=`grep SECRET_KEY ${DjangoSettingsFile}/settings.py`
sed -i "s@SECRET_KEY@${Secret_key}@g" source/settings.py
cat source/settings.py > backend/web/config/settings.py
cat source/todo.models.py > backend/web/todo/models.py
cat source/todo.admin.py > backend/web/todo/admin.py

docker-compose run --rm web sh -c "python manage.py makemigrations"
sleep 15s
docker-compose run --rm web sh -c "python manage.py migrate"
