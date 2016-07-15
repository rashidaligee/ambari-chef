#
# Cookbook Name:: ambari-chef
# Recipe:: ambari_agent_setup
#
# Copyright (c) 2016 Artem Ervits, All Rights Reserved.

package 'ambari-agent' do
end

# template requires a directory created
config_dir = node['ambari-chef']['ambari_agent_conf_dir']

directory config_dir do
  recursive true
end

template "#{config_dir}ambari-agent.ini" do
  source 'ambari-agent.ini.erb'
  mode '0644'
  # subscribes :run, 'package ambari-agent'
end

execute 'ambari-agent start' do
  command 'ambari-agent start'
end
