#!/bin/bash

##################
### ※Required ###
##################

## Environment switching ##
# Target compose file
# ) docker-compose.no-proxy.yml
# ) docker-compose.proxy.yml
readonly COMPOSE_FILE=""

## Postfix Config ##
# Specifies from which domain the posted mail appears to come.
readonly MAILDOMAIN=""

## nginx-proxy Config ##
readonly VIRTUAL_HOST=""

##################
###  optional  ###
##################

## MySQL Config ##
# Specify the password to be set for the MySQL root user.
readonly MYSQL_ROOT_PASSWORD=""
# Specifies the name of the database created when the image starts.
readonly MYSQL_DATABASE=""
# Specify the name of the new user.
readonly MYSQL_USER=""
# Specify a password for the new user.
readonly MYSQL_PASSWORD=""

## Postfix Config ##
# Specify the user ID.
# e.g.) sample:saple
readonly SMTP_USER=""

## Zabbix Config ##
# Specify settings for the synchronization frequency of server-side and proxy-side settings.
readonly ZBX_PROXYCONFIGFREQUENCY=""

## nginx-proxy Config ##
readonly VIRTUAL_PORT=""