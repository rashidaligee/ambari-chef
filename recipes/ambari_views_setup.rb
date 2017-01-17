#
# Cookbook Name:: ambari-chef
# Recipe:: ambari_views_setup
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# create an instance of Files View
bash 'create instance of Files view' do
  code <<-EOH
    curl --user admin:admin -i -H 'X-Requested-By: ambari' -X POST #{node['ambari-chef']['ambari_views_url']}/FILES/versions/1.0.0/instances/FILES_NEW_INSTANCE \
--data '{
  "ViewInstanceInfo" : {
      "description" : "Files API",
      "label" : "Files View",
      "properties" : {
      "webhdfs.client.failover.proxy.provider" : "#{node['ambari-chef']['webhdfs.client.failover.proxy.provider']}",
      "webhdfs.ha.namenode.http-address.nn1" : "#{node['ambari-chef']['webhdfs.ha.namenode.http-address.nn1']}",
      "webhdfs.ha.namenode.http-address.nn2" : "#{node['ambari-chef']['webhdfs.ha.namenode.http-address.nn2']}",
      "webhdfs.ha.namenode.https-address.nn1" : "#{node['ambari-chef']['webhdfs.ha.namenode.https-address.nn1']}",
      "webhdfs.ha.namenode.https-address.nn2" : "#{node['ambari-chef']['webhdfs.ha.namenode.https-address.nn2']}",
      "webhdfs.ha.namenode.rpc-address.nn1" : "#{node['ambari-chef']['webhdfs.ha.namenode.rpc-address.nn1']}",
      "webhdfs.ha.namenode.rpc-address.nn2" : "#{node['ambari-chef']['webhdfs.ha.namenode.rpc-address.nn2']}",
      "webhdfs.ha.namenodes.list" : "#{node['ambari-chef']['webhdfs.ha.namenodes.list']}",
      "webhdfs.nameservices" : "#{node['ambari-chef']['webhdfs.nameservices']}",
      "webhdfs.url" : "#{node['ambari-chef']['webhdfs.url']}"
      }
    }
}'
    EOH
end

# create an instance of Hive View
bash 'create instance of Hive view' do
  code <<-EOH
curl --user admin:admin -i -H 'X-Requested-By: ambari' -X POST #{node['ambari-chef']['ambari_views_url']}/HIVE/versions/1.0.0/instances/HIVE_NEW_INSTANCE \
--data '{
  "ViewInstanceInfo" : {
      "description" : "Hive View",
      "label" : "Hive View",
      "properties" : {
      "webhdfs.client.failover.proxy.provider" : "#{node['ambari-chef']['webhdfs.client.failover.proxy.provider']}",
      "webhdfs.ha.namenode.http-address.nn1" : "#{node['ambari-chef']['webhdfs.ha.namenode.http-address.nn1']}",
      "webhdfs.ha.namenode.http-address.nn2" : "#{node['ambari-chef']['webhdfs.ha.namenode.http-address.nn2']}",
      "webhdfs.ha.namenode.https-address.nn1" : "#{node['ambari-chef']['webhdfs.ha.namenode.https-address.nn1']}",
      "webhdfs.ha.namenode.https-address.nn2" : "#{node['ambari-chef']['webhdfs.ha.namenode.https-address.nn2']}",
      "webhdfs.ha.namenode.rpc-address.nn1" : "#{node['ambari-chef']['webhdfs.ha.namenode.rpc-address.nn1']}",
      "webhdfs.ha.namenode.rpc-address.nn2" : "#{node['ambari-chef']['webhdfs.ha.namenode.rpc-address.nn2']}",
      "webhdfs.ha.namenodes.list" : "#{node['ambari-chef']['webhdfs.ha.namenodes.list']}",
      "webhdfs.nameservices" : "#{node['ambari-chef']['webhdfs.nameservices']}",
      "webhdfs.url" : "#{node['ambari-chef']['webhdfs.url']}",
      "hive.host" : "#{node['ambari-chef']['hive.host']}",
      "hive.http.path" : "#{node['ambari-chef']['hive.http.path']}",
      "hive.http.port" : "#{node['ambari-chef']['hive.http.port']}",
      "hive.metastore.warehouse.dir" : "#{node['ambari-chef']['hive.metastore.warehouse.dir']}",
      "hive.port" : "#{node['ambari-chef']['hive.port']}",
      "hive.transport.mode" : "#{node['ambari-chef']['hive.transport.mode']}",
      "yarn.ats.url" : "#{node['ambari-chef']['yarn.ats.url']}",
      "yarn.resourcemanager.url" : "#{node['ambari-chef']['yarn.resourcemanager.url']}"
      }
    }
}'
    EOH
end

# create an instance of Hive 1.5 View
bash 'create instance of Hive 1.5 view' do
  code <<-EOH
curl --user admin:admin -i -H 'X-Requested-By: ambari' -X POST #{node['ambari-chef']['ambari_views_url']}/HIVE/versions/1.5.0/instances/HIVE_NEW_INSTANCE_1_5 \
--data '{
  "ViewInstanceInfo" : {
      "description" : "Hive View 1.5",
      "label" : "Hive View 1.5",
      "properties" : {
      "webhdfs.client.failover.proxy.provider" : "#{node['ambari-chef']['webhdfs.client.failover.proxy.provider']}",
      "webhdfs.ha.namenode.http-address.nn1" : "#{node['ambari-chef']['webhdfs.ha.namenode.http-address.nn1']}",
      "webhdfs.ha.namenode.http-address.nn2" : "#{node['ambari-chef']['webhdfs.ha.namenode.http-address.nn2']}",
      "webhdfs.ha.namenode.https-address.nn1" : "#{node['ambari-chef']['webhdfs.ha.namenode.https-address.nn1']}",
      "webhdfs.ha.namenode.https-address.nn2" : "#{node['ambari-chef']['webhdfs.ha.namenode.https-address.nn2']}",
      "webhdfs.ha.namenode.rpc-address.nn1" : "#{node['ambari-chef']['webhdfs.ha.namenode.rpc-address.nn1']}",
      "webhdfs.ha.namenode.rpc-address.nn2" : "#{node['ambari-chef']['webhdfs.ha.namenode.rpc-address.nn2']}",
      "webhdfs.ha.namenodes.list" : "#{node['ambari-chef']['webhdfs.ha.namenodes.list']}",
      "webhdfs.nameservices" : "#{node['ambari-chef']['webhdfs.nameservices']}",
      "webhdfs.url" : "#{node['ambari-chef']['webhdfs.url']}",
      "hive.host" : "#{node['ambari-chef']['hive.host']}",
      "hive.http.path" : "#{node['ambari-chef']['hive.http.path']}",
      "hive.http.port" : "#{node['ambari-chef']['hive.http.port']}",
      "hive.metastore.warehouse.dir" : "#{node['ambari-chef']['hive.metastore.warehouse.dir']}",
      "hive.port" : "#{node['ambari-chef']['hive.port']}",
      "hive.transport.mode" : "#{node['ambari-chef']['hive.transport.mode']}",
      "yarn.ats.url" : "#{node['ambari-chef']['yarn.ats.url']}",
      "yarn.resourcemanager.url" : "#{node['ambari-chef']['yarn.resourcemanager.url']}"
      }
    }
}'
    EOH
end

# create an instance of Tez View
bash 'create instance of Tez view' do
  code <<-EOH
curl --user admin:admin -i -H 'X-Requested-By: ambari' -X POST #{node['ambari-chef']['ambari_views_url']}/TEZ/versions/0.7.0.2.5.3.0-136/instances/TEZ_NEW_INSTANCE \
--data '{
  "ViewInstanceInfo" : {
      "description" : "Tez View",
      "label" : "Tez View",
      "properties" : {
      "webhdfs.url" : "#{node['ambari-chef']['webhdfs.url']}",
      "yarn.ats.url" : "#{node['ambari-chef']['yarn.ats.url']}",
      "yarn.resourcemanager.url" : "#{node['ambari-chef']['yarn.resourcemanager.url']}"
      }
    }
}'
    EOH
end

# create an instance of Pig View
bash 'create instance of Pig view' do
  code <<-EOH
curl --user admin:admin -i -H 'X-Requested-By: ambari' -X POST #{node['ambari-chef']['ambari_views_url']}/PIG/versions/1.0.0/instances/PIG_NEW_INSTANCE \
--data '{
  "ViewInstanceInfo" : {
      "description" : "Pig View",
      "label" : "Pig View",
      "properties" : {
      "webhdfs.client.failover.proxy.provider" : "#{node['ambari-chef']['webhdfs.client.failover.proxy.provider']}",
      "webhdfs.ha.namenode.http-address.nn1" : "#{node['ambari-chef']['webhdfs.ha.namenode.http-address.nn1']}",
      "webhdfs.ha.namenode.http-address.nn2" : "#{node['ambari-chef']['webhdfs.ha.namenode.http-address.nn2']}",
      "webhdfs.ha.namenode.https-address.nn1" : "#{node['ambari-chef']['webhdfs.ha.namenode.https-address.nn1']}",
      "webhdfs.ha.namenode.https-address.nn2" : "#{node['ambari-chef']['webhdfs.ha.namenode.https-address.nn2']}",
      "webhdfs.ha.namenode.rpc-address.nn1" : "#{node['ambari-chef']['webhdfs.ha.namenode.rpc-address.nn1']}",
      "webhdfs.ha.namenode.rpc-address.nn2" : "#{node['ambari-chef']['webhdfs.ha.namenode.rpc-address.nn2']}",
      "webhdfs.ha.namenodes.list" : "#{node['ambari-chef']['webhdfs.ha.namenodes.list']}",
      "webhdfs.nameservices" : "#{node['ambari-chef']['webhdfs.nameservices']}",
      "webhdfs.url" : "#{node['ambari-chef']['webhdfs.url']}",
      "webhcat.hostname" : "#{node['ambari-chef']['webhcat.hostname']}",
      "webhcat.port" : "#{node['ambari-chef']['webhcat.port']}"
      }
    }
}'
    EOH
end

# create an instance of Workflow Manager View
bash 'create instance of Workflow Manager view' do
  code <<-EOH
curl --user admin:admin -i -H 'X-Requested-By: ambari' -X POST #{node['ambari-chef']['ambari_views_url']}/WORKFLOW_MANAGER/versions/1.0.0/instances/WF_NEW_INSTANCE \
--data '{
  "ViewInstanceInfo" : {
      "description" : "Workflow Manager View",
      "label" : "Workflow Manager View",
      "properties" : {
      "webhdfs.client.failover.proxy.provider" : "#{node['ambari-chef']['webhdfs.client.failover.proxy.provider']}",
      "webhdfs.ha.namenode.http-address.nn1" : "#{node['ambari-chef']['webhdfs.ha.namenode.http-address.nn1']}",
      "webhdfs.ha.namenode.http-address.nn2" : "#{node['ambari-chef']['webhdfs.ha.namenode.http-address.nn2']}",
      "webhdfs.ha.namenode.https-address.nn1" : "#{node['ambari-chef']['webhdfs.ha.namenode.https-address.nn1']}",
      "webhdfs.ha.namenode.https-address.nn2" : "#{node['ambari-chef']['webhdfs.ha.namenode.https-address.nn2']}",
      "webhdfs.ha.namenode.rpc-address.nn1" : "#{node['ambari-chef']['webhdfs.ha.namenode.rpc-address.nn1']}",
      "webhdfs.ha.namenode.rpc-address.nn2" : "#{node['ambari-chef']['webhdfs.ha.namenode.rpc-address.nn2']}",
      "webhdfs.ha.namenodes.list" : "#{node['ambari-chef']['webhdfs.ha.namenodes.list']}",
      "webhdfs.nameservices" : "#{node['ambari-chef']['webhdfs.nameservices']}",
      "webhdfs.url" : "#{node['ambari-chef']['hdfs.url']}",
      "oozie.service.uri" : "#{node['ambari-chef']['oozie.service.uri']}",
      "hadoop.security.authentication" : "#{node['ambari-chef']['hadoop.security.authentication']}",
      "yarn.resourcemanager.address" : "#{node['ambari-chef']['yarn.resourcemanager.address']}"
      }
    }
}'
    EOH
end
