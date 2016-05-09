#!/bin/bash

yum -y install wget
yum -y install unzip

cd /tmp

wget "https://github.com/Hari465/Hadoop1/raw/master/ansible-el7-2.0.0.1-20160114160137.rpm" -O ansible.rpm

rpm -ivh ansible.rpm


cd /tmp
wget https://github.com/Hari465/ansible-playbooks/archive/master.zip

unzip master.zip

cd /tmp/ansible-playbooks-master

/opt/ansible/bin/ansible-playbook java.yml -i "localhost," --connection local >> /tmp/ansible-playbooks-master/playbook.log
