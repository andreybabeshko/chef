#
# Cookbook Name:: jenkins_wrapper
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

if node['jenkins-server']['java']['install']
  include_recipe 'java'
end

if node['jenkins-server']['ant']['install']
  include_recipe 'ant'
end

if node['jenkins-server']['git']['install']
  include_recipe 'git'
end

if node['jenkins-server']['nginx']['install']
  include_recipe 'jenkins-server::nginx'
end

include_recipe 'jenkins-server::master'
include_recipe 'jenkins-server::security'
include_recipe 'jenkins-server::settings'
