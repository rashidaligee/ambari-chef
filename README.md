This cookbook installs and configures Ambari Server, Agent and Views.

TODO
====

1. deploy Ambari Views
2. define Ambari heapsize
3. take care of dependencies, i.e. OpenSSL (v1.01, build 16 or later)
4. currently requires Postgres to install but not to configure
5. how to get checksum info for ambari-server?

Requirements
============

Please see [latest documentation](http://docs.hortonworks.com/HDPDocuments/Ambari-2.2.2.0/bk_ambari_views_guide/content/ch_using_ambari_views.html).

Dependencies
============

- https://github.com/agileorbit-cookbooks/java.git
- https://github.com/chef-cookbooks/apt

Usage
=====

Add `ambari-views-chef` to your node's `run_list`.

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
