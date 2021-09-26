# Ansible Workstation Setup & Maintenance

## Description

**WIP**  
Ref.:

- [Ansible tutorial](https://www.youtube.com/playlist?list=PLT98CRl2KxKEUHie1m24-wkyHpEsa4Y70)
- [ThePrimeagen FEM Workshop](https://frontendmasters.com/workshops/dev-productivity/)

## Setup

### Run docker image

```sh
docker build . -t ansible && docker run --rm -it ansible bash
```

###

```sh
ansible-pull -U https://github.com/Pirastrino/ansible-test.git -e "ansible_become_pass=ubuntu" --vault-password-file ~/.vault_key
```
