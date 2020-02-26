# Docker Zabbix

Zabbix is an enterprise-class open source distributed monitoring solution.

Current version Zabbix server 4.2

# Usage

## Install

### 1. Set each variable.

```bash
$ cp default.config.sh config.sh
$ vi config.sh
```

|Variable                 |Overview                                                                                   |Required |
|-------------------------|-------------------------------------------------------------------------------------------|:-------:|
|COMPOSE_FILE             |Target compose file                                                                        |*        |
|MYSQL_ROOT_PASSWORD      |Specify the password to be set for the MySQL root user.                                    |         |
|MYSQL_DATABASE           |Specifies the name of the database created when the image starts.                          |         |
|MYSQL_USER               |Specify the name of the new user.                                                          |         |
|MYSQL_PASSWORD           |Specify a password for the new user.                                                       |         |
|MAILDOMAIN               |Specifies from which domain the posted mail appears to come.                               |*        |
|SMTP_USER                |Specify the user ID.                                                                       |         |
|ZBX_PROXYCONFIGFREQUENCY |Specify settings for the synchronization frequency of server-side and proxy-side settings. |         |
|VIRTUAL_HOST             |※Settings for nginx-proxy                                                                 |*        |
|VIRTUAL_PORT             |※Settings for nginx-proxy                                                                 |         |

### 2. Build Docker Image

```bash
$ ./build.sh
```

### 3. Execute docker-compose.

```bash
$ docker-compose up -d
```

# Links

[Zabbix-4.2 Manual](https://www.zabbix.com/documentation/4.2/manual)

[Zabbix-Proxy Manual](https://www.zabbix.com/documentation/4.2/manual/appendix/config/zabbix_proxy)

[Zabbix-Agent Manual](https://www.zabbix.com/documentation/4.2/manual/appendix/config/zabbix_agentd)

[Zabbix-Macro Manual](https://www.zabbix.com/documentation/4.2/manual/appendix/macros/supported_by_location)

[zabbix official docker](https://hub.docker.com/r/zabbix/zabbix-server-mysql)
