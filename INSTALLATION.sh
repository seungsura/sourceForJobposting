#!/bin/bash

echo start mkdir.sh
sh mkdir.sh
sleep 2s
echo start movefiles.sh
sh movefiles.sh
sleep 2s
echo start updatefiles.sh
sh updatefiles.sh
sleep 2s
echo start StartApp.sh
sh StartApp.sh
sleep 2s
echo auto_dump.sh  
sh auto_dump.sh    
sleep 2s           
echo start Makemigration.sh
sh Makemigration.sh
sleep 2s
echo start Makemodelview.sh
sh Makemodelview.sh
sleep 2s 
echo start Makefrontend.sh
sh Makefrontend
sleep 2s
echo docker-compose UP!
docker-compose up --build

