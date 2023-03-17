#!/bin/bash
mkdir backend 
mkdir frontend 
mkdir mariadb 
mkdir mariadb/volume 
mkdir mariadb/sql
cd backend 
mkdir web 
mkdir nginx
cd ..
mkdir backend/web/static
mkdir frontend/nginx 
mkdir frontend/web-front
touch backend/web/.env 
touch backend/web/Dockerfile 
touch backend/web/requirements.txt
touch backend/nginx/Dockerfile.dev 
touch backend/nginx/default.dev.conf
touch mariadb/.env 
touch mariadb/Dockerfile 
touch mariadb/my.cnf
touch mariadb/sql/init.sql
touch frontend/nginx/Dockerfile.dev 
touch frontend/nginx/default.dev.conf 
touch frontend/nginx/wait.sh

