#!/bin/bash

cd terraTOansible/terracreate/
terraform plan -out out.detailRE
sleep 5
if [[ -e out.details ]];  then
terraform apply out.detailRE
sleep 15
ipadd="$(terraform output instance_ip_addr)"

/bin/cat <<EOM > /home/legendadmin/terraTOansible/hosts-device.yml
# hosts-dev

[webservers]
app1 ansible_host=$ipadd

[local]
control ansible_connection=local

EOM

fi
sleep 5
cd ..
ansible-playbook /home/legendadmin/terraTOansible/playbook/all-playbook.yml
