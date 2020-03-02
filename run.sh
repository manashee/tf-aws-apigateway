#!/bin/bash

custom_swagger_file=$1
echo $custom_swagger_file

# api_name=`cat $custom_swagger_file | grep -i "title" | awk '{print $2}'`
api_name=`yq r $custom_swagger_file  'info.title'`
echo $api_name

../terraform/terraform apply -var 'api_name="$api_name"' -var 'swgfile='$custom_swagger_file'' -auto-approve
