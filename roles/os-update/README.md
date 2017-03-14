os-update
=========

Performs a OS update and restart if needed.

Expected uses:

* update system after provisioning from stale image
* periodic updates for security patches, etc.

**WARNING**: WiP - only suits my personal needs

Requirements
------------


Role Variables
--------------


Dependencies
------------


Example Playbook
----------------

```yaml
---
- name: update OS and reboot if necessary
  hosts: all
  gather_facts: true
  roles:
    - os-update
```

Run: `ansible-playbook -i inventory.txt os-update.yml`

License
-------

MIT

Author Information
------------------

[stevetarver.github.io](http://stevetarver.github.io)
