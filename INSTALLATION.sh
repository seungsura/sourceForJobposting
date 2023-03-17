#!/bin/bash

echo start mkdir.sh
sh mkdir.sh
sleep 2s
echo start movefiles.sh
sh movefiles.sh
sleep 2s
echo start makemigration.sh
sh makemigration.sh
