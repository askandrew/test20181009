# test20181009

Requirements
------------

Ansible = 2.4.2.0 or latest


Set ansible.cfg
---------------

copy ansible.cfg.example change the variable `roles_path`


Run instance describer
----------------------
I assume you already install [aws-cli](https://docs.aws.amazon.com/cli/latest/userguide/installing.html) and [jq](http://macappstore.org/jq/) , and have access to aws console


Set Host inventories
--------------------

I assume you already have user for ssh to the node that you wanted to deploy
you can copy `inventories/dev.example` to `inventories/dev` and change the value of ansible_host parameter with ip  


Run the playbook
----------------

Run the playbook `ansible-playbook -i inventories/dev playbooks/helloworld.yml --limit helloworld`
