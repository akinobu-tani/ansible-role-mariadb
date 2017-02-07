Ansible Role MariaDB
=========

[![Build Status](https://travis-ci.org/akinobu-tani/ansible-role-mariadb.svg?branch=master)](https://travis-ci.org/akinobu-tani/ansible-role-mariadb)

Install MariaDB.

Requirements
------------

none

Role Variables
--------------

``` yaml
mariadb_version: 10.0.0
```

Dependencies
------------

none

Example Playbook
----------------

``` yaml
- hosts: servers
  vars:
    mariadb_version: 10.0.0
  roles:
    - mariadb
```

License
-------

MIT

Author Information
------------------

[Akinobu Tani](http://github.com/akinobu-tani)
