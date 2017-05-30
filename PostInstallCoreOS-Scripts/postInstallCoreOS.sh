#!/bin/bash
set -x #echo on

###########################################################
#####					              #####
#####		Post Install Core OS Script	      #####
#####				to Install            #####
#####		JDK, JMS, MySQL, WSO2 API	      #####
#####						      #####
#####			Author: RG/24032017	      #####
#####						      #####
###########################################################

cd /tmp

# 0. Create common landing zone /opt
echo "##### 0. Create common landing zone /opt #####"
	cd /
	sudo mkdir opt
	sudo chown wso2 -R opt
	cd opt


# 1. JDK
echo "##### 1. JDK #####"
	cd /opt
	mkdir java
	cd java

	# Unzip/Install/Extract/Configure
	scp %%USER%%@192.168.100.100:%%SOME_DIR%%/jdk-8u121-linux-x64.tar .
	tar -xvf *.tar 
	rm *.tar


# 2. EMS Client Libraries
echo "##### 2. JMS Client Libraries #####"
	cd /opt
	mkdir tibco
	cd tibco
	mkdir ems
	cd ems
    mkdir

	# Unzip/Install/Extract/Configure
	scp %%USER%%@192.168.100.100:%%SOME_DIR%%/TIB_ems_8.zip .
	unzip TIB_ems_8.zip
	rm *.zip
	rm -R *MAC*
	cd TIB_ems_8
	./TIBCOUniversalInstaller-lnx-x86.bin -silent -V responseFile="TIBCOUniversalInstaller-ems.silent"


# 3. MYSQL Database Drivers
echo "##### 3. MYSQL Database Drivers #####"
	cd /opt
	mkdir mysql
	cd mysql

	# Unzip/Install/Extract/Configure
	scp %%USER%%@192.168.100.100:%%SOME_DIR%%/mysql-connector-java-5.1.41-bin.jar .


# 4a. WSO2 API Manager 2.1.0
echo "##### 4a. WSO2 API Manager 2.1.0 #####"
	cd /opt
	mkdir wso2
	cd wso2

	# Unzip/Install/Extract/Configure
	scp %%USER%%@192.168.100.100:%%SOME_DIR%%/wso2am-2.1.0.zip .
	unzip wso2am-2.1.0.zip
	rm *.zip
	rm -R *MAC*


# 99. Set Environment Variables
	cd ~
	rm .bashrc
	cp /usr/share/skel/.bashrc .
	echo "export JAVA_HOME=/opt/java/jdk1.8.0_121" >> .bashrc
	echo "export PATH="/opt/java/jdk1.8.0_121/bin:/opt/tibco/ems/8.3/bin:${PATH}"" >> .bashrc




