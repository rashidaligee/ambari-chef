default['ambari-chef']['use_local_repo'] = 'false'

# checksum is SHA-256 checksum of a file, i.e. `sha256sum smartsense-hst_1.2.2-0_amd64.deb`
#default['smartsense-chef']['checksum'] = '2b4a2fcc6e74a8a763eb43e3ec257a5e4e667956baf0f1aa1fcb2111539d7d68'
#default['smartsense-chef']['repo_url'] = 'http://public-repo-1.hortonworks.com/ambari/ubuntu12/2.x/updates/2.2.2.0/pool/main/s/smartsense-hst'

# Override defaults for the Java cookbook
default['java']['jdk_version'] = 8
default['java']['install_flavor'] = "oracle"
default['java']['accept_license_agreement'] = true
default['java']['oracle']['jce']['enabled'] = true
default['java']['oracle']['accept_oracle_download_terms'] = true
default['java']['set_default'] = true

# APT repository attributes
default['apt']['compile_time_update'] = 'true'

# Ambari properties
default['ambari-chef']['ambari_server_host'] = 'servername.ambari.apache.org'
default['ambari-chef']['ambari_server_conf_dir'] = '/etc/ambari-server/conf/'
default['ambari-chef']['ambari_agent_conf_dir'] = '/etc/ambari-agent/conf/'
default['ambari-chef']['ambari_database_password'] = 'bigdata'
default['ambari-chef']['java_home'] = '/usr/lib/jvm/java-8-oracle-amd64'
