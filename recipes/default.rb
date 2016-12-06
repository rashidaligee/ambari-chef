#
# Cookbook Name:: ambari-views-chef
# Recipe:: default
#
# Copyright (c) 2016 Artem Ervits, All Rights Reserved.

include_recipe 'ambari-chef::setattr'

# dependencies
%w(openssh-client wget curl unzip tar python2.7 openssl libpq5 postgresql postgresql-client-common postgresql-common ssl-cert).each do |pkg|
  package pkg do
  end
end

apt_repository 'ambari' do
  uri node['ambari-chef']['ambari_repo']
  components ['main']
  distribution 'Ambari'
  action :add

  keyserver 'keyserver.ubuntu.com'
  key 'B9733A7A07513CAD'

#  not_if { node['ambari-chef']['use_local_repo'] }
end

include_recipe 'ambari-chef::ambari_server_setup'
#include_recipe 'ambari-chef::ambari_agent_setup'
include_recipe 'ambari-chef::ambari_views_setup'
