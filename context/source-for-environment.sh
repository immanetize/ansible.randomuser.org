#!/usr/bin/bash

# Ansible will look in /etc for configs unless we tell it otherwise
# This is the first point where reusing these playbooks should differ
# for your own environment.

# ANSIBLE_HOSTS is used for grouping hosts into, well, groups.
export ANSIBLE_HOSTS=~/ansible.randomuser.org/inventory/ansible_hosts

# This points to the ansible configuration file, we'll be busy in there.
export ANSIBLE_CONFIG=~/ansible.randomuser.org/context/ansible.cfg

export TASKRC=~/ansible.randomuser.org/context/taskwarrior/taskrc