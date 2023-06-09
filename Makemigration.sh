#!/bin/bash

cp -r GroomDev/backend/* backend/web/

docker-compose run --rm web sh -c "python manage.py makemigrations"
sleep 5s
docker-compose run --rm web sh -c "python manage.py migrate"
sleep 5s
docker-compose run --rm web sh -c "python create_superuser.py"
