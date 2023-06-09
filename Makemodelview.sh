#!/bin/bash

docker-compose run --rm web sh -c "python manage.py collectstatic"
docker-compose up -d --build
