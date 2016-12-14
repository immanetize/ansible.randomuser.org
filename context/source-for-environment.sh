#!/usr/bin/bash

# Ansible will look in /etc for configs unless we tell it otherwise
# This is the first point where reusing these playbooks should differ
# for your own environment.

# ANSIBLE_HOSTS is used for grouping hosts into, well, groups.
export ANSIBLE_HOSTS=~/ansible.randomuser.org/inventory/ansible_hosts

# This points to the ansible configuration file, we'll be busy in there.
export ANSIBLE_CONFIG=~/ansible.randomuser.org/context/ansible.cfg

# out of tree modules are in a special path
export ANSIBLE_LIBRARY=~/ansible.randomuser.org/ansible/library
export TASKRC=~/ansible.randomuser.org/context/taskwarrior/taskrc

alias check="if [[ /tmp/master-playbook.retry ]]; then RETRY_ARG='--limit @/tmp/master-playbook.retry'; else RETRY_ARG=""; fi ; ansible-playbook -C ~/ansible.randomuser.org/master-playbook.yml -vvv $RETRY_ARG"
