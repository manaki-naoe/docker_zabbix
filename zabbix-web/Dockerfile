FROM zabbix/zabbix-web-nginx-mysql:alpine-4.2-latest

# grap font
COPY ./build_config/fonts/graphfont.ttf /usr/share/zabbix/assets/fonts/DejaVuSans.ttf

# Install tzdata
RUN apk update --no-cache \
    && apk add --no-cache \
            tzdata \
    && cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
    && apk del tzdata \
    && chown nginx:nginx /usr/share/zabbix/assets/fonts/DejaVuSans.ttf