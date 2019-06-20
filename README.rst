----------------------
ansible.randomuser.org
----------------------
ansible playbooks for my personal infrastructure

Iterations of this have been floating around my systems since I first learned about ansible.
They've been crude, disorganized, and somewhat experimental.  This is a start from *scratch*.

The 'start from scratch' statement has always been in the readme, and its happened more than once. Latest iteration begins June 2019, enjoy.

Prerequisites
-------------
I make some basic assumptions about things not described in the playbook.

- Physical hosts must be deployed with at least a minimal OS installation and functional networking.
  At some point, this may be minimized to a 'seed' node to provision the rest via ie Foreman..
-  Playbooks may adjust static IPs, credentials, etc but the system must be reachable first.  

- `~/.ssh/config` has functional directives for any users or ssh keys not declared in the playbooks.
  This is a must when dealing with multiple environments using ansible or just plain ssh.

Guiding principles
------------------
Some basic design parameters for the playbooks and environment:

- All devices must use ssh key authentication
- All playbooks, roles, etc must be completely idempotent.
- lots of tags, enable reuse with granularity
- Where applicable, services must use valid SSL certificates, 
  with available ciphers and certs configured per security
  best practices.
- Credentials and PII will be kept to a minimum to aid reuse.  Where required,
  private functionality will be implemented via a `{{ private }}` namespace.

Operation
---------
I'll try to keep this readme up to date as functionality is added.
