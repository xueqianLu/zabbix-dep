#!/bin/bash
filename=zabbix_agentd.conf
server=
hostname=""
sudo apt install zabbix-agent

cp ./zabbix_replace.conf $filename

sed -i "s#REPLACE_SERVERACTIVE#$server#g"  $filename
sed -i "s#REPLACE_SERVER#$server#g" 	   $filename
sed -i "s#REPLACE_HOSTNAME#$hostname#g"	   $filename

sudo mv $filename /etc/zabbix/
sudo systemctl restart zabbix-agent
sudo systemctl enable zabbix-agent
