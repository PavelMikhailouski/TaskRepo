#
# Cookbook Name:: jboss
# Recipe:: deploy
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

ark 'hudson' do
  url node['chef-ops']['application_repo'] 
  prefix_root '/usr/local/jboss/server/default/deploy'
  not_if {::File.exists?('/usr/local/jboss/server/default/deploy/hudson')}
end
link '/usr/local/jboss/server/default/deploy/hudson' do
  to '/usr/local/jboss/server/default/deploy/hudson-1'
end
cookbook_file '/usr/local/jboss/server/default/deploy/hudson/hudson.xml' do
  source 'hudson.xml'
end
