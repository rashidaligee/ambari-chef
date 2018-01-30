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

case node['platform']
when 'ubuntu'
  case node['platform_version']
  when '14.04'
    apt_repository 'ambari' do
      uri node['ambari-chef']['ambari_repo_ubuntu_14']
      components ['main']
      distribution 'Ambari'
      action :add
      keyserver 'keyserver.ubuntu.com'
      key 'B9733A7A07513CAD'
    #  not_if { node['ambari-chef']['use_local_repo'] }
    end
  when '16.04'
    apt_repository 'ambari' do
      uri node['ambari-chef']['ambari_repo_ubuntu_16']
      components ['main']
      distribution 'Ambari'
      action :add
      keyserver 'keyserver.ubuntu.com'
      key 'B9733A7A07513CAD'
    #  not_if { node['ambari-chef']['use_local_repo'] }
    end
  else
    raise "Platform #{node['platform']} #{node['platform_version']} is not supported"
  end
else
  raise "Platform #{node['platform']} is not supported"
end


include_recipe 'ambari-chef::ambari_server_setup'
#include_recipe 'ambari-chef::ambari_agent_setup'
include_recipe 'ambari-chef::ambari_views_setup'
