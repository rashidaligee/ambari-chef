# system attributes


# APT repository attributes
default['apt']['compile_time_update'] = 'true'

node.default['ambari-chef']['ambari_server_version'] = '2.6.1'

case node.default['ambari-chef']['ambari_server_version']
when '2.6.1'
  node.default['ambari-chef']['ambari_repo_ubuntu_14'] = 'http://public-repo-1.hortonworks.com/ambari/ubuntu14/2.x/updates/2.6.1.0'
  node.default['ambari-chef']['ambari_repo_ubuntu_16'] = 'http://public-repo-1.hortonworks.com/ambari/ubuntu16/2.x/updates/2.6.1.0'
else
  raise "Ambari Server #{node['ambari-chef']['ambari_server_version']} is not supported"
end
# Ambari properties
node.default['ambari-chef']['ambari-server-startup-web-timeout'] = '150'
node.default['ambari-chef']['ambari_server_host'] = 'servername.ambari.apache.org'
node.default['ambari-chef']['ambari_server_conf_dir'] = '/etc/ambari-server/conf/'
node.default['ambari-chef']['ambari_agent_conf_dir'] = '/etc/ambari-agent/conf/'
node.default['ambari-chef']['ambari_database_password'] = 'bigdata'
# node.default['ambari-chef']['java_home'] = "/usr/lib/jvm/java-#{node[:java][:jdk_version]}-#{node[:java][:install_flavor]}-amd64"
node.default['ambari-chef']['java_home'] = 'embedded'

node.default['ambari-chef']['use_local_repo'] = 'false'

node.default['ambari-chef']['ambari_views_url'] = 'http://default-ubuntu-1404:8080/api/v1/views'

node.default['ambari-chef']['webhdfs.client.failover.proxy.provider'] = 'org.apache.hadoop.hdfs.server.namenode.ha.ConfiguredFailoverProxyProvider'
node.default['ambari-chef']['webhdfs.ha.namenode.http-address.nn1'] = 'u1201.ambari.apache.org:50070'
node.default['ambari-chef']['webhdfs.ha.namenode.http-address.nn2'] = 'u1202.ambari.apache.org:50070'
node.default['ambari-chef']['webhdfs.ha.namenode.https-address.nn1'] = 'u1201.ambari.apache.org:50470'
node.default['ambari-chef']['webhdfs.ha.namenode.https-address.nn2'] = 'u1202.ambari.apache.org:50470'
node.default['ambari-chef']['webhdfs.ha.namenode.rpc-address.nn1'] = 'u1201.ambari.apache.org:8020'
node.default['ambari-chef']['webhdfs.ha.namenode.rpc-address.nn2'] = 'u1202.ambari.apache.org:8020'
node.default['ambari-chef']['webhdfs.ha.namenodes.list'] = 'nn1,nn2'
node.default['ambari-chef']['webhdfs.nameservices'] = 'hacluster'
node.default['ambari-chef']['webhdfs.url'] = 'webhdfs://hacluster'
node.default['ambari-chef']['fs.defaultFS'] = 'hdfs://hacluster'
node.default['ambari-chef']['hive.host'] =  'u1203.ambari.apache.org'
node.default['ambari-chef']['hive.http.path'] = 'cliservice'
node.default['ambari-chef']['hive.http.port'] = '10001'
node.default['ambari-chef']['hive.metastore.warehouse.dir'] = '/apps/hive/warehouse'
node.default['ambari-chef']['hive.port'] = '10000'
node.default['ambari-chef']['hive.transport.mode'] = 'binary'
node.default['ambari-chef']['yarn.ats.url'] = 'http://u1202.ambari.apache.org:8188'
node.default['ambari-chef']['yarn.resourcemanager.url'] = 'u1202.ambari.apache.org:8088'
node.default['ambari-chef']['webhcat.hostname'] = 'u1203.ambari.apache.org'
node.default['ambari-chef']['webhcat.port'] = '50111'
node.default['ambari-chef']['oozie.service.uri'] = 'http://u1203.ambari.apache.org:11000/oozie'
node.default['ambari-chef']['hadoop.security.authentication'] = 'simple'
node.default['ambari-chef']['webhcat.hostname'] = 'u1203.ambari.apache.org'
node.default['ambari-chef']['webhcat.port'] = '50111'
