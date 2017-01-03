#
# Cookbook Name:: ambari-chef
# Recipe:: ambari_views_setup
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# create an instance of Files View
bash 'create instance of Files view' do
  code <<-EOH
    curl --user admin:admin -i -H 'X-Requested-By: ambari' -X POST http://localhost:8080/api/v1/views/FILES/versions/1.0.0/instances/FILES_NEW_INSTANCE \
--data '{
  "ViewInstanceInfo" : {
      "description" : "Files API",
      "label" : "Files View",
      "properties" : {
      "webhdfs.client.failover.proxy.provider" : "org.apache.hadoop.hdfs.server.namenode.ha.ConfiguredFailoverProxyProvider",
      "webhdfs.ha.namenode.http-address.nn1" : "u1201.ambari.apache.org:50070",
      "webhdfs.ha.namenode.http-address.nn2" : "u1202.ambari.apache.org:50070",
      "webhdfs.ha.namenode.https-address.nn1" : "u1201.ambari.apache.org:50470",
      "webhdfs.ha.namenode.https-address.nn2" : "u1202.ambari.apache.org:50470",
      "webhdfs.ha.namenode.rpc-address.nn1" : "u1201.ambari.apache.org:8020",
      "webhdfs.ha.namenode.rpc-address.nn2" : "u1202.ambari.apache.org:8020",
      "webhdfs.ha.namenodes.list" : "nn1,nn2",
      "webhdfs.nameservices" : "hacluster",
      "webhdfs.url" : "webhdfs://hacluster"
      }
    }
}'
    EOH
end

# create an instance of Hive View
bash 'create instance of Hive view' do
  code <<-EOH
curl --user admin:admin -i -H 'X-Requested-By: ambari' -X POST http://localhost:8080/api/v1/views/HIVE/versions/1.0.0/instances/HIVE_NEW_INSTANCE \
--data '{
  "ViewInstanceInfo" : {
      "description" : "Hive View",
      "label" : "Hive View",
      "properties" : {
      "webhdfs.client.failover.proxy.provider" : "org.apache.hadoop.hdfs.server.namenode.ha.ConfiguredFailoverProxyProvider",
      "webhdfs.ha.namenode.http-address.nn1" : "u1201.ambari.apache.org:50070",
      "webhdfs.ha.namenode.http-address.nn2" : "u1202.ambari.apache.org:50070",
      "webhdfs.ha.namenode.https-address.nn1" : "u1201.ambari.apache.org:50470",
      "webhdfs.ha.namenode.https-address.nn2" : "u1202.ambari.apache.org:50470",
      "webhdfs.ha.namenode.rpc-address.nn1" : "u1201.ambari.apache.org:8020",
      "webhdfs.ha.namenode.rpc-address.nn2" : "u1202.ambari.apache.org:8020",
      "webhdfs.ha.namenodes.list" : "nn1,nn2",
      "webhdfs.nameservices" : "hacluster",
      "webhdfs.url" : "webhdfs://hacluster",
      "hive.host" : "u1203.ambari.apache.org",
      "hive.http.path" : "cliservice",
      "hive.http.port" : "10001",
      "hive.metastore.warehouse.dir" : "/apps/hive/warehouse",
      "hive.port" : "10000",
      "hive.transport.mode" : "binary",
      "yarn.ats.url" : "http://u1202.ambari.apache.org:8188",
      "yarn.resourcemanager.url" : "u1202.ambari.apache.org:8088"
      }
    }
}'
    EOH
end

# create an instance of Hive 1.5 View
bash 'create instance of Hive 1.5 view' do
  code <<-EOH
curl --user admin:admin -i -H 'X-Requested-By: ambari' -X POST http://localhost:8080/api/v1/views/HIVE/versions/1.5.0/instances/HIVE_NEW_INSTANCE_1_5 \
--data '{
  "ViewInstanceInfo" : {
      "description" : "Hive View 1.5",
      "label" : "Hive View 1.5",
      "properties" : {
      "webhdfs.client.failover.proxy.provider" : "org.apache.hadoop.hdfs.server.namenode.ha.ConfiguredFailoverProxyProvider",
      "webhdfs.ha.namenode.http-address.nn1" : "u1201.ambari.apache.org:50070",
      "webhdfs.ha.namenode.http-address.nn2" : "u1202.ambari.apache.org:50070",
      "webhdfs.ha.namenode.https-address.nn1" : "u1201.ambari.apache.org:50470",
      "webhdfs.ha.namenode.https-address.nn2" : "u1202.ambari.apache.org:50470",
      "webhdfs.ha.namenode.rpc-address.nn1" : "u1201.ambari.apache.org:8020",
      "webhdfs.ha.namenode.rpc-address.nn2" : "u1202.ambari.apache.org:8020",
      "webhdfs.ha.namenodes.list" : "nn1,nn2",
      "webhdfs.nameservices" : "hacluster",
      "webhdfs.url" : "webhdfs://hacluster",
      "hive.host" : "u1203.ambari.apache.org",
      "hive.http.path" : "cliservice",
      "hive.http.port" : "10001",
      "hive.metastore.warehouse.dir" : "/apps/hive/warehouse",
      "hive.port" : "10000",
      "hive.transport.mode" : "binary",
      "yarn.ats.url" : "http://u1202.ambari.apache.org:8188",
      "yarn.resourcemanager.url" : "u1202.ambari.apache.org:8088"
      }
    }
}'
    EOH
end

# create an instance of Tez View
bash 'create instance of Tez view' do
  code <<-EOH
curl --user admin:admin -i -H 'X-Requested-By: ambari' -X POST http://localhost:8080/api/v1/views/TEZ/versions/0.7.0.2.5.3.0-136/instances/TEZ_NEW_INSTANCE \
--data '{
  "ViewInstanceInfo" : {
      "description" : "Tez View",
      "label" : "Tez View",
      "properties" : {
      "webhdfs.url" : "webhdfs://hacluster",
      "yarn.ats.url" : "http://u1202.ambari.apache.org:8188",
      "yarn.resourcemanager.url" : "u1202.ambari.apache.org:8088"
      }
    }
}'
    EOH
end

# create an instance of Pig View
bash 'create instance of Pig view' do
  code <<-EOH
curl --user admin:admin -i -H 'X-Requested-By: ambari' -X POST http://localhost:8080/api/v1/views/PIG/versions/1.0.0/instances/PIG_NEW_INSTANCE \
--data '{
  "ViewInstanceInfo" : {
      "description" : "Pig View",
      "label" : "Pig View",
      "properties" : {
      "webhdfs.client.failover.proxy.provider" : "org.apache.hadoop.hdfs.server.namenode.ha.ConfiguredFailoverProxyProvider",
      "webhdfs.ha.namenode.http-address.nn1" : "u1201.ambari.apache.org:50070",
      "webhdfs.ha.namenode.http-address.nn2" : "u1202.ambari.apache.org:50070",
      "webhdfs.ha.namenode.https-address.nn1" : "u1201.ambari.apache.org:50470",
      "webhdfs.ha.namenode.https-address.nn2" : "u1202.ambari.apache.org:50470",
      "webhdfs.ha.namenode.rpc-address.nn1" : "u1201.ambari.apache.org:8020",
      "webhdfs.ha.namenode.rpc-address.nn2" : "u1202.ambari.apache.org:8020",
      "webhdfs.ha.namenodes.list" : "nn1,nn2",
      "webhdfs.nameservices" : "hacluster",
      "webhdfs.url" : "webhdfs://hacluster",
      "webhcat.hostname" : "u1203.ambari.apache.org",
      "webhcat.port" : "50111"
      }
    }
}'
    EOH
end

# create an instance of Workflow Manager View
bash 'create instance of Workflow Manager view' do
  code <<-EOH
curl --user admin:admin -i -H 'X-Requested-By: ambari' -X POST http://localhost:8080/api/v1/views/WORKFLOW_MANAGER/versions/1.0.0/instances/WF_NEW_INSTANCE \
--data '{
  "ViewInstanceInfo" : {
      "description" : "Workflow Manager View",
      "label" : "Workflow Manager View",
      "properties" : {
      "webhdfs.client.failover.proxy.provider" : "org.apache.hadoop.hdfs.server.namenode.ha.ConfiguredFailoverProxyProvider",
      "webhdfs.ha.namenode.http-address.nn1" : "u1201.ambari.apache.org:50070",
      "webhdfs.ha.namenode.http-address.nn2" : "u1202.ambari.apache.org:50070",
      "webhdfs.ha.namenode.https-address.nn1" : "u1201.ambari.apache.org:50470",
      "webhdfs.ha.namenode.https-address.nn2" : "u1202.ambari.apache.org:50470",
      "webhdfs.ha.namenode.rpc-address.nn1" : "u1201.ambari.apache.org:8020",
      "webhdfs.ha.namenode.rpc-address.nn2" : "u1202.ambari.apache.org:8020",
      "webhdfs.ha.namenodes.list" : "nn1,nn2",
      "webhdfs.nameservices" : "hacluster",
      "webhdfs.url" : "webhdfs://hacluster",
      "oozie.service.uri" : "http://u1203.ambari.apache.org:11000/oozie"
      }
    }
}'
    EOH
end
