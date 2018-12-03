
#!/bin/bash

vagrant up

ansible-playbook loadbalancer.yml
ansible-playbook database.yml
