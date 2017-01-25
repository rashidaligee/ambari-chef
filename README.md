This cookbook installs and configures Ambari Server, Agent and Views.

TODO
====

1. define Ambari heapsize
2. take care of dependencies, i.e. OpenSSL (v1.01, build 16 or later)
3. how to get checksum info for ambari-server?
4. In Ambari 2.4.2 Hive 1.5 view is failing due to https://issues.apache.org/jira/browse/AMBARI-18387
5. in Kerborized clusters, need to pull krb-user package and ntp, also need keytab for ambari-server and run command to configure ambari-server security by doing the following `ambari-server stop` and `ambari-server setup-security' hopefully will merge that step into Chef to do it automatically. 
```
ambari-server stop
ambari-server setup-security
 	> 3
 	> enter principal: ambari-server-mycluster@AMBARI.APACHE.ORG
 	> enter location of keytab: /etc/security/keytabs/ambari.server.keytab
6. Kerberos branch has Tez and Files view working fine. WFD and Pig should also work but not tested, Hive view is still to do

Requirements
============

Please see [latest documentation](http://docs.hortonworks.com/HDPDocuments/Ambari-2.4.2.0/bk_ambari-views/content/ch_using_ambari_views.html).

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
VirtualBox: 5.1.10

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

This cookbook is provided without any warranties. Use at your own risk. To file a bug report, please respond on [this thread](https://community.hortonworks.com/repos/64032/ambari-chef.html).
