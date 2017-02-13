## AWS Jump Off

Test of Ansible script to create an AWS jump-off box and private network


## Pre-requisites

### Installing ansible

Since Ansible has been packaged for use with pip I've used virtualenv for python to allow a local installation that doesn't need admin access or muck up any of your system libraries.  I prefer this approach as it's cleaner and has less in the way of side-affects.  Feel free to install ansible from RPMs/.deb or other package managers onto your system natively if that is easier for you.

Create a virtual python environment and activate it

```
virtualenv ansible-env
. ansible-env/bin/activate
```

Install ansible

```
# Need to install/build OpenSSL first 
LDFLAGS="-L/usr/local/lib" pip install cryptography --no-use-wheel
pip install ansible
pip install passlib
pip install boto 
```

## Running

### Gathering Facts

I added a script that was intended to gather EC2 facts and dump/display them

Run with the following command:

```
ansible-playbook --ask-vault-pass gather_facts.yml
```

### Creating EC2 instances With User Data

Simple script that creates two VMs

```
ansible-playbook --ask-vault-pass build_simple_vm.yml
```


### Creating EC2 instances With Ansible Authorized Keys Module

Simple script that creates two VMs

```
ansible-playbook --ask-vault-pass build_with_auth_keys.yml
```



### Killing ALL instance

Simple script that will kill ALL your instances

NOTE: Need to improve this to select tags

Run with the following command:

```
ansible-playbook --ask-vault-pass cleanup_simple.yml
```

### Creating Jump-off-infrastructre

For testing just the infrastructure part

```
ansible-playbook --ask-vault-pass --tags infrastructure cleanup_simple.yml
```


## Documentation

* [Authorized keys module](http://docs.ansible.com/ansible/authorized_key_module.html)
