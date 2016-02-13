---------------
Personalization
---------------

While I'm trying to make things reusable for you, you must make changes in some places 
to leverage these playbooks.  I'll describe the place for these changes here. 

Just rough notes for now:

- environment variable `ANSIBLE_HOSTS`.  My inventory file will include *my* 
  FQDNs and you'll want to use your own.  Set it differently.
- environment variable `ANSIBLE_CONFIG`.  This is mostly path declarations at
  the moment.
