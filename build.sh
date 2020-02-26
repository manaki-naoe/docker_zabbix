#!/bin/bash

# Load variables
source ./config.sh

# Abort if there are no required variables.
if [ -z "$COMPOSE_FILE" -o -z "$MAILDOMAIN" -o -z "$VIRTUAL_HOST" ]; then
  echo -e "\033[0;31mRequired variable has no value.\033[0;39m"
  exit
fi

# Target compose file
echo COMPOSE_FILE=${COMPOSE_FILE} | tee .env
# MYSQL_ROOT_PASSWORD
if [ -n "$MYSQL_ROOT_PASSWORD" ]; then
  echo MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD} | tee -a .env
fi
# MYSQL_DATABASE
if [ -n "$MYSQL_DATABASE" ]; then
  echo MYSQL_DATABASE=${MYSQL_DATABASE} | tee -a .env
fi
# MYSQL_USER
if [ -n "$MYSQL_USER" ]; then
  echo MYSQL_USER=${MYSQL_USER} | tee -a .env
fi
# MYSQL_PASSWORD
if [ -n "$MYSQL_PASSWORD" ]; then
  echo MYSQL_PASSWORD=${MYSQL_PASSWORD} | tee -a .env
fi
# MAILDOMAIN
  echo MAILDOMAIN=${MAILDOMAIN} | tee -a .env
# SMTP_USER
if [ -n "$SMTP_USER" ]; then
  echo SMTP_USER=${SMTP_USER} | tee -a .env
fi
# ZBX_PROXYCONFIGFREQUENCY
if [ -n "$ZBX_PROXYCONFIGFREQUENCY" ]; then
  echo ZBX_PROXYCONFIGFREQUENCY=${ZBX_PROXYCONFIGFREQUENCY} | tee -a .env
fi
# VIRTUAL_HOST
echo VIRTUAL_HOST=${VIRTUAL_HOST} | tee -a .env
# VIRTUAL_PORT
if [ -n "$VIRTUAL_PORT" ]; then
  echo VIRTUAL_PORT=${VIRTUAL_PORT} | tee -a .env
fi

# Image name base
readonly APP_IMAGE_BASE_NAME="sunsoft"

# Build image of zabbix-web
docker build -t ${APP_IMAGE_BASE_NAME}/zabbix-web ./zabbix-web
# Build image for zabbix-server
docker build -t ${APP_IMAGE_BASE_NAME}/zabbix-server ./zabbix-server
# Build image for zabbix-postfix
docker build -t ${APP_IMAGE_BASE_NAME}/zabbix-postfix ./zabbix-postfix
