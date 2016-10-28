#
# Cookbook Name:: ambari-chef
# Recipe:: ambari_views_setup
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

bash 'create instance of Files view' do
  code <<-EOH
    curl --user admin:admin -i -H 'X-Requested-By: ambari' -X POST http://localhost:8080/api/v1/views/FILES/versions/1.0.0/instances/FILES_NEW_INSTANCE
    EOH
end

bash 'update instance of Files view' do
  code <<-EOH
    curl --user admin:admin -i -H 'X-Requested-By: ambari' -X PUT http://localhost:8080/api/v1/views/FILES/versions/1.0.0/instances/FILES_NEW_INSTANCE \
--data '{
  "ViewInstanceInfo" : {
      "description" : "Files API",
      "label" : "Files View",
      "properties" : {
      "webhdfs.client.failover.proxy.provider" : "org.apache.hadoop.hdfs.server.namenode.ha.ConfiguredFailoverProxyProvider",
      "webhdfs.ha.namenode.http-address.nn1" : "u1201.ambari.apache.org:50070",
      "webhdfs.ha.namenode.http-address.nn2" : "u1201.ambari.apache.org:50070",
      "webhdfs.ha.namenode.https-address.nn1" : null,
      "webhdfs.ha.namenode.https-address.nn2" : null,
      "webhdfs.ha.namenode.rpc-address.nn1" : "u1201.ambari.apache.org:8020",
      "webhdfs.ha.namenode.rpc-address.nn2" : "u1202.ambari.apache.org:8020",
      "webhdfs.ha.namenodes.list" : "nn1,nn2",
      "webhdfs.nameservices" : "hacluster",
      "webhdfs.url" : "webhdfs://u1202.ambari.apache.org:50070"
      }
    }
}'
    EOH
end
