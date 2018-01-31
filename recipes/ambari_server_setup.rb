#
# Cookbook Name:: ambari-chef
# Recipe:: ambari_server_setup
#
# Copyright (c) 2016 Artem Ervits, All Rights Reserved.

package 'ambari-server' do
  action :install
end

# template requires a directory created
config_dir = node['ambari-chef']['ambari_server_conf_dir']

directory config_dir do
  recursive true
end

java_opts = ''

if node['ambari-chef']['java_home'] != 'embedded'
  java_opts += "-j #{node['ambari-chef']['java_home']}"
end

log 'java_opts' do
  message "java_opts #{java_opts}"
  level :warn
end

execute 'ambari-server setup -s' do
  command "ambari-server setup -s #{java_opts}"
end

service 'ambari-server status' do
  supports :status => true
  status_command 'ambari-server status'
#  action :start
end

java_properties 'ambari.properties' do
  properties_file "#{node['ambari-chef']['ambari_server_conf_dir']}/ambari.properties"
  property 'server.startup.web.timeout', "#{node['ambari-chef']['ambari-server-startup-web-timeout']}"
end

execute 'ambari-server start' do
  # only_if 'template "#{config_dir}/ambari.prorperties"'
  command 'ambari-server start'
  not_if 'ambari-server status'
end
