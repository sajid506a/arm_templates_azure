#!/bin/bash

echo "Are you sure you want to delete resource group? y/n"
read ans
if [ $ans == 'y' ] || [ $ans == 'yes' ]
then
    az group delete --name $1
else
    echo "Operation cancelled."
fi
