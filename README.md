# Terraform libvirt Lab

A home lab is a great way to explore different tools, architectures, and development methods.

This repository contains terraform modules that will help you create an environment with VMs to run things like Jenkins, HAProxy, web servers, databases etc.

The idea is to use the [`libvirt` terraform provider](https://github.com/dmacvicar/terraform-provider-libvirt) to build a decently capable home lab that is more extensible than the typical one-off VM examples out there.

The remaining work in this repository is to incorporate Ansible playbooks to configure each VM appropriately.

## Requirements

* terraform >= v0.13
* libvirt with a default network and storage pool
* [terraform-provider-libvirt](https://github.com/dmacvicar/terraform-provider-libvirt)

## Todo (make these issues)

* Incorporate Ansible playbooks for each existing resource. Run it either standalone or using `local-exec` with terraform
* Design a monitoring stack of VMs with modules for prometheus, influxdb, grafana, and alertmanager
* Provision each ^ monitoring VM using Ansible
* Document set up with various requirements e.g. terraform 0.13 plugin locations, defining libvirt network & storage
* Figure out if each module should have its own `cloud_init.cfg` or share a symlink to a top-level version
