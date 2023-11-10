#!/bin/bash
az group create --name imrg1 --location "eastus"

az deployment group create --resource-group imrg1 --template-file $1