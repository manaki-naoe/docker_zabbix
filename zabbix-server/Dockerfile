FROM zabbix/zabbix-server-mysql:alpine-4.2-latest

# Install tzdata
RUN apk update --no-cache \
    && apk add --no-cache \
            tzdata \
    && cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
    && apk del tzdata