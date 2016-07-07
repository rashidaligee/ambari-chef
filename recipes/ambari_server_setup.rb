#
# Cookbook Name:: ambari-chef
# Recipe:: ambari_server_setup
#
# Copyright (c) 2016 Artem Ervits, All Rights Reserved.

# install Ambari server with MySQL
# mysql_connector_j '/usr/share/java'

package "ambari-server" do
end

# template requires a directory created
config_dir = node['ambari-chef']['ambari_server_conf_dir']

directory config_dir do
  recursive true
end

template "#{config_dir}ambari.properties" do
   source 'ambari.properties.erb'
   mode '0644'
   subscribes :run, 'package ambari-server'
end

template "#{config_dir}password.dat" do
   source 'password.dat.erb'
   mode '0644'
end

execute 'ambari-server start' do
  only_if 'template "#{config_dir}/ambari.prorperties"'
  command 'ambari-server start'
end
