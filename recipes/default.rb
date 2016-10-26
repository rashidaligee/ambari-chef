#
# Cookbook Name:: ambari-views-chef
# Recipe:: default
#
# Copyright (c) 2016 Artem Ervits, All Rights Reserved.

include_recipe 'apt'
include_recipe 'java'
# include_recipe 'mysql_connector::j'

# dependencies
%w(openssh-client wget curl unzip tar python2.7 openssl libpq5 postgresql postgresql-client-common postgresql-common ssl-cert).each do |pkg|
  package pkg do
  end
end

apt_repository 'ambari' do
  uri 'http://public-repo-1.hortonworks.com/ambari/ubuntu14/2.x/updates/2.4.1.0'
  components ['main']
  distribution 'Ambari'
  action :add

  # requires Chef 12.9
  keyserver 'keyserver.ubuntu.com'
  key 'B9733A7A07513CAD'
end

include_recipe 'ambari-chef::ambari_server_setup'
#include_recipe 'ambari-chef::ambari_agent_setup'
