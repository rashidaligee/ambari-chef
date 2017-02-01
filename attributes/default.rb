# APT repository attributes
default['apt']['compile_time_update'] = 'true'

# Ambari properties
default['ambari-chef']['ambari_server_host'] = 'servername.ambari.apache.org'
default['ambari-chef']['ambari_server_conf_dir'] = '/etc/ambari-server/conf/'
default['ambari-chef']['ambari_agent_conf_dir'] = '/etc/ambari-agent/conf/'
default['ambari-chef']['ambari_database_password'] = 'bigdata'
default['ambari-chef']['java_home'] = "/usr/lib/jvm/java-#{node[:java][:jdk_version]}-#{node[:java][:install_flavor]}-amd64"

default['ambari-chef']['ambari_repo'] = 'http://public-repo-1.hortonworks.com/ambari/ubuntu14/2.x/updates/2.4.2.0'
default['ambari-chef']['use_local_repo'] = 'false'

default['ambari-chef']['ambari_views_url'] = 'http://default-ubuntu-1404:8080/api/v1/views'

default['ambari-chef']['webhdfs.client.failover.proxy.provider'] = 'org.apache.hadoop.hdfs.server.namenode.ha.ConfiguredFailoverProxyProvider'
default['ambari-chef']['webhdfs.ha.namenode.http-address.nn1'] = 'u1201.ambari.apache.org:50070'
default['ambari-chef']['webhdfs.ha.namenode.http-address.nn2'] = 'u1202.ambari.apache.org:50070'
default['ambari-chef']['webhdfs.ha.namenode.https-address.nn1'] = 'u1201.ambari.apache.org:50470'
default['ambari-chef']['webhdfs.ha.namenode.https-address.nn2'] = 'u1202.ambari.apache.org:50470'
default['ambari-chef']['webhdfs.ha.namenode.rpc-address.nn1'] = 'u1201.ambari.apache.org:8020'
default['ambari-chef']['webhdfs.ha.namenode.rpc-address.nn2'] = 'u1202.ambari.apache.org:8020'
default['ambari-chef']['webhdfs.ha.namenodes.list'] = 'nn1,nn2'
default['ambari-chef']['webhdfs.nameservices'] = 'hacluster'
default['ambari-chef']['webhdfs.url'] = 'webhdfs://hacluster'

# use 'SIMPLE' for non-Kerberos cluster
default['ambari-chef']['webhdfs.auth'] = 'auth=KERBEROS;proxyuser=ambari-server-mycluster'
default['ambari-chef']['fs.defaultFS'] = 'hdfs://hacluster'
default['ambari-chef']['hive.host'] =  'u1203.ambari.apache.org'
default['ambari-chef']['hive.http.path'] = 'cliservice'
default['ambari-chef']['hive.http.port'] = '10001'
default['ambari-chef']['hive.metastore.warehouse.dir'] = '/apps/hive/warehouse'
default['ambari-chef']['hive.port'] = '10000'
default['ambari-chef']['hive.transport.mode'] = 'binary'
default['ambari-chef']['yarn.ats.url'] = 'http://u1202.ambari.apache.org:8188'
default['ambari-chef']['yarn.resourcemanager.url'] = 'http://u1202.ambari.apache.org:8088'
default['ambari-chef']['webhcat.hostname'] = 'u1203.ambari.apache.org'
default['ambari-chef']['webhcat.port'] = '50111'
default['ambari-chef']['oozie.service.uri'] = 'http://u1203.ambari.apache.org:11000/oozie'
default['ambari-chef']['hadoop.security.authentication'] = 'simple'
