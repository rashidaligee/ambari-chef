#
# Cookbook Name:: ambari-chef
# Recipe:: ambari_server_setup
#
# Copyright (c) 2016 Artem Ervits, All Rights Reserved.

package 'ambari-server' do
end

# template requires a directory created
config_dir = node['ambari-chef']['ambari_server_conf_dir']

directory config_dir do
  recursive true
end

# template "#{config_dir}ambari.properties" do
#   source 'ambari.properties.erb'
#   mode '0644'
#   subscribes :run, 'package ambari-server'
# end

# template "#{config_dir}password.dat" do
#   source 'password.dat.erb'
#   mode '0644'
# end

execute 'ambari-server setup -s' do
  command 'ambari-server setup -s'
end

service 'ambari-server status' do
  supports :status => true
  status_command 'ambari-server status'
#  action :start
end
java_properties 'ambari.properties' do
  properties_file "#{node['ambari-chef']['ambari_server_conf_dir']}/ambari.properties"
  property 'server.startup.web.timeout', "#{node['ambari-chef']['ambari-server-startup-web-timeout']}"
execute 'ambari-server start'
  # only_if 'template "#{config_dir}/ambari.prorperties"'
  command 'ambari-server start'
  not_if 'ambari-server status'
end
