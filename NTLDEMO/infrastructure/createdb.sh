#!/bin/bash
####################################################
# Importe a Mysql dump in a docker Mysql container #
####################################################
#exit the script if any statement returns a non-true return value
#set -e
#read -e -p "Path to the dump : " filepath
#read -p "Enter the mysql container name : " container
#read -p "Enter the mysql root password : " rootpass
#read -p "Enter the database name : " dbname

filepath=dbsamples/capsule-export.sql
dbname=capsule
container=nitldb
rootpass=runa



echo "Importing the dump...";
eval "docker exec -i $container bash -c \"mysql -u root -p'$rootpass' $dbname\" < $filepath"
echo "End of action"

echo "End of mysql commands"
exit 0
