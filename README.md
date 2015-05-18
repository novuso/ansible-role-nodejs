# Ansible Role: Node.js

[![Ansible Galaxy](http://img.shields.io/badge/galaxy-novuso.nodejs-000000.svg)](https://galaxy.ansible.com/list#/roles/3819)
[![MIT License](http://img.shields.io/badge/license-MIT-003399.svg)](http://opensource.org/licenses/MIT)

An Ansible role that manages Node.js on Ubuntu 14.04

## Requirements

None

## Role Variables

Ansible variables are listed here along with their default values:

`nodejs_version` is the default Node.js version to install.

    nodejs_version: "0.12"

`nodejs_nvm_git_repo` is the path to the NVM git repository.

    nodejs_nvm_git_repo: "https://github.com/creationix/nvm.git"

`nodejs_nvm_dir` is the path to the NVM directory.

    nodejs_nvm_dir: "/home/{{ ansible_user_id }}/.nvm"

`nodejs_packages` is a list of Node.js packages to manage. Each entry in the
list may designate:

* **name** *required*
* **state** (default is present)
* **global** (default is yes)
* **production** (default is no)
* **version** Package version (default is omitted)
* **ignore_scripts** Use the --ignore-scripts flag (default is no)
* **executable** (defaults to nvm install location)
* **path** Base path to install modules (default is omitted)
* **registry** Registry to install modules from (default is omitted)

By default, Node.js packages are not installed:

    nodejs_packages: []

## Dependencies

None

## Example Playbook

    ---
    - hosts: all
      vars:
      - nodejs_packages:
        - name: "bower"
          global: no
          path: "/path/to/app"
      roles:
      - novuso.nodejs

## License

This is released under the [MIT license](http://opensource.org/licenses/MIT).
