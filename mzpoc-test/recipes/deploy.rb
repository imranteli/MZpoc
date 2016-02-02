#
# Cookbook Name:: mzpoc-test
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


cookbook_file '/etc/yum.repos.d/mongodb-org-3.2.repo' do
  source 'mongodb-org-3.2.repo'
  action :create
end

package ['lsof', 'wget', 'jdk', 'mongodb*'] do
  action :install
end
