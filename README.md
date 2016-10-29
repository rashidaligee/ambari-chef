This cookbook installs and configures Ambari Server, Agent and Views.

TODO
====

2. define Ambari heapsize
3. take care of dependencies, i.e. OpenSSL (v1.01, build 16 or later)
5. how to get checksum info for ambari-server?
6. add views for Hive 1.5, WFD, Pig, etc.
7. externalize view properties into attributes

Requirements
============

Please see [latest documentation](http://docs.hortonworks.com/HDPDocuments/Ambari-2.2.2.0/bk_ambari_views_guide/content/ch_using_ambari_views.html).

For Ambari Views, it is required to add the following properties in the custom core-site

`hadoop.proxyuser.root.groups=*`
`hadoop.proxyuser.root.hosts=*`

Dependencies
============

- https://github.com/agileorbit-cookbooks/java.git
- https://github.com/chef-cookbooks/apt

Software Dependencies
=====================
Vagrant: 1.8.6
VirtualBox: 5.1.8

Usage
=====

Add `ambari-chef::default` to your node's `run_list`.

Testing
=======

A `.kitchen.yaml` file is provided. 

1. Run `kitchen converge` to verify this cookbook.
2. Run `foodcritic` for lint tests
3. Run `kitchen verify` for ServerSpec tests
4. Run `rspec --color` for ChefSpec tests

Technical Support
=================

This cookbook is provided without any warranties. Use at your own risk. To file a bug report, please respond on [this thread](https://community.hortonworks.com/content/repo/38515/smartsense-chef-cookbook-for-non-ambari-install.html).
