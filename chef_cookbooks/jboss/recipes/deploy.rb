#
# Cookbook Name:: jboss
# Recipe:: deploy
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

ark 'testweb' do
  url 'http://www.cumulogic.com/download/Apps/testweb.zip'
  #checksum '596c0b7cd48d332d61bb6aaf483405e8b24c48d629926b9cbf4c425a8a66db96'
  prefix_root '/usr/local/jboss/server/default/deploy'
  not_if {::File.exists?('/usr/local/jboss/server/default/deploy/testweb')}
end
