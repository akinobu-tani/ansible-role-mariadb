Ansible Role MariaDB
=========

[![Build Status](https://travis-ci.org/akinobu-tani/ansible-role-mariadb.svg?branch=master)](https://travis-ci.org/akinobu-tani/ansible-role-mariadb)

Install MariaDB.

Requirements
------------

none

Role Variables
--------------

### Required

``` yaml
mariadb_version: 10.0.0
mariadb_root_password: xxxxxxxx
```

### Options

``` yaml
mariadb_cnf_template: small.cnf.j2
mariadb_server_id: 1
mariadb_port: 3306
mariadb_databases:
  - database_name
mariadb_users:
  - name: user_name
    hosts:
      - localhost
      - 127.0.0.1
    password: abcdefgh
    privs:
      - db_name.*:ALL
mariadb_data_dir: /var/lib/mysql
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
    mariadb_root_password: xxxxxxxx
    mariadb_databases:
      - sample_database
    mariadb_users:
      - name: sample_user
        hosts:
          - localhost
          - 127.0.0.1
        password: abcdefgh
        priv: '*.*:ALL'
  roles:
    - mariadb
```

License
-------

MIT

Author Information
------------------

[Akinobu Tani](http://github.com/akinobu-tani)
