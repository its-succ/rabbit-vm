#!/usr/bin/env bash

if ! [ `which ansible` ]; then
  apt-get install software-properties-common -y
  apt-add-repository ppa:ansible/ansible -y
  apt-get update -y
  apt-get install -y ansible
  apt-get install -y python-pip
  pip install --upgrade pip
  pip install urllib3 pyopenssl ndg-httpsclient pyasn1
fi

ansible-galaxy install -r /vagrant/ansible/requirements.yml
ansible-playbook -i /vagrant/ansible/hosts/local /vagrant/ansible/playbook.yml