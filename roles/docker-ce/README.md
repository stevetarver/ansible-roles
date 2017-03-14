Role Name
=========

Installs:

- docker: 17.03.0
- docker-compose: 1.8.0 ??? - working on version conflicts
- docker-py: 1.7.0 ??? - working on version conflicts

[Install instructions](https://docs.docker.com/engine/installation/linux/ubuntu/#os-requirements)

**NOTE**: docker versions use apt semantics; e.g. 1.12.1-0

Requirements
------------

Requires ansible >= 2.1.0 for ansible `docker_container` module use.

Role Variables
--------------

| key | default | description |
|---|---|---|---|
| docker\_version          | 1.12.1 | docker-engine version  |
| docker\_compose\_version | 1.8.0  | docker-compose version |
| docker\_py\_version      | 1.7.0  | docker-py version      |

**NOTE**: these packages have interdependencies, verify they work together before specifying alternatives.

Dependencies
------------

None

Example Playbook
----------------

Use: `ansible-playbook -i inventory.py docker-playbook.yml`

```yaml
---
- name: install docker
  hosts: docker_hosts
  roles:
    - docker
```

License
-------

MIT

Author Information
------------------

