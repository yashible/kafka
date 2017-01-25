yashible.kafka
==============

Ansible Role that installs Kafka

Requirements
------------

None.

Role Variables
--------------

ansible_cache_path: /var/cache/ansible
kafka_scala_version: 2.11
kafka_version: 0.10.1.1
kafka_zookeeper_connect: localhost:2181

Dependencies
------------

None.

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: yashible.kafka }

License
-------

MIT
