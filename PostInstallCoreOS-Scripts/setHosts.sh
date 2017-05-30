#!/bin/bash
set -x #echo on

#############################################################
#####							#####
#####		   Hosts/Static IP Script		#####
#####							#####
#####			Author: RG/01042017		#####
#####							#####
#############################################################

# 0. Add hosts entries for all relevant machines
echo "##### 0. Create hosts entries as needed"
	sudo echo "192.168.100.100 your-host-machine" >> /etc/hosts
	sudo echo "192.168.100.111 wso2-api-manager" >> /etc/hosts
	sudo echo "192.168.100.121 wso2-api-gateway" >> /etc/hosts
	sudo echo "192.168.100.131 wso2-api-store" >> /etc/hosts
	sudo echo "192.168.100.141 wso2-api-publisher" >> /etc/hosts
	sudo echo "192.168.100.151 wso2-api-keymanager" >> /etc/hosts
	sudo echo "192.168.100.161 wso2-api-trafficmanager" >> /etc/hosts
	sudo echo "192.168.100.171 wso2-api-analytics" >> /etc/hosts
	
