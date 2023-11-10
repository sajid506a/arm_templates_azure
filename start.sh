#!/bin/bash
# usage ./start.sh <rg> <location> <template.json>
if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
    echo "Both resource group (rg), location and template.json are mandatory"
    exit 1
fi

az group create --name $1 --location $2

az deployment group create --resource-group $1 --template-file $3
