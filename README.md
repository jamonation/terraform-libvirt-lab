# Terraform libvirt Lab

A home lab is a great way to explore different tools, architectures, and development methods.

This repository contains terraform modules that will help you create an environment with VMs to run things like Jenkins, HAProxy, web servers, databases etc.

The idea is to use the [`libvirt` terraform provider](https://github.com/dmacvicar/terraform-provider-libvirt) to build a decently capable home lab that is more extensible than the typical one-off VM examples out there.

The remaining work in this repository is to incorporate Ansible playbooks to configure each VM appropriately.

## Requirements

* terraform >= v0.13
* libvirt with a default network and storage pool
* [terraform-provider-libvirt](https://github.com/dmacvicar/terraform-provider-libvirt)
