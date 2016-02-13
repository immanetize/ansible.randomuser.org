----------------------
ansible.randomuser.org
----------------------
ansible playbooks for my personal infrastructure

Iterations of this have been floating around my systems since I first learned about ansible.
They've been crude, disorganized, and somewhat experimental.  This is a start from *scratch*.

Prerequisites
-------------
I make some basic assumptions about things not described in the playbook.

- Physical hosts must be deployed with at least a minimal OS installation and functional networking.
  Playbooks may adjust static IPs, credentials, etc but the system must be reachable first.  While
  it would be fun to deploy a temporary cobbler setup on my workstation to bootstrap physical hosts,
  I'm not going to go that far.

- `~/.ssh/config` has functional directives for any users or ssh keys not declared in the playbooks.
  This is a must when dealing with multiple environments using ansible or just plain ssh.

Guiding principles
------------------
Some basic design parameters for the playbooks and evironment:

- All devices must use ssh key authenitcation
- All playbooks, roles, etc must be completely idempotent.
- Where applicable, services must use valid SSL certificates, 
  with available ciphers and certs configured per security
  best practices.

Operation
---------
I'll try to keep this readme up to date as functionality is added.
