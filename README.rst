----------------------
ansible.randomuser.org
----------------------
`refactor`: converting to role-only

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

- You should decide on a domain name before you start using this, and configure your workstation with
  a hostname in that domain::

    ~ ]$ hostnamectl set-hostname workstation.randomuser.org

  Feel free to choose your own hostname (really, don't recycle mine, it won't work out), the playbook
  will be referencing this when naming new hosts.
Guiding principles
------------------
Some basic design parameters for the playbooks and evironment:

- All devices must use ssh key authenitcation
- All playbooks, roles, etc must be completely idempotent.
- Where applicable, services must use valid SSL certificates, 
  with available ciphers and certs configured per security
  best practices.
- Credentials and PII will be kept to a minimum to aid reuse.  Where required,
  private functionality will be implemented via a `{{ private }}` namespace.
  This follows the successful paradigm used by Fedora Infrastructure.

Operation
---------
I'll try to keep this readme up to date as functionality is added.
