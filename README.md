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


