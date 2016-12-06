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

