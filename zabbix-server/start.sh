#!/bin/bash
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose -f compose.yaml up -d 


#docker run -it --restart=always \
#	--name zabbix-appliance \
#	-p 10051:10051 \
#	-p 8080:80 \
#	-v /etc/localtime:/etc/localtime:ro	\
#	-v /opt/zabbix-dep/zabbix-server/zabbix/alertscripts:/usr/lib/zabbix/alertscripts	\
#	-v /opt/zabbix-dep/zabbix-server/zabbix/externalscripts:/usr/lib/zabbix/externalscripts	\
#	-d zabbix/zabbix-appliance:latest
