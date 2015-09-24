#
# Cookbook Name:: jboss
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
user 'jboss' do
  password 'Jboss456'
end
ark 'jboss' do
  url 'http://freefr.dl.sourceforge.net/project/jboss/JBoss/JBoss-6.0.0.Final/jboss-as-distribution-6.0.0.Final.zip'
  # it re-downloads anyway. checksum '8a3be1afd0006f44bb01c79f5b117daed760bba2f22437effef5c2ab85a1ec1d'
  version '6.0.0.Final'
  prefix_root '/usr/local' 
  owner 'jboss'
  group 'jboss'
  not_if {::File.exists?('/usr/local/jboss')}  #&&::File.exists?('/root/task2/jboss.zip')}
end
cookbook_file '/etc/init.d/jboss' do
  source 'jbinit.sh'
  mode '0755'
  owner 'root'
  group 'root'
end
