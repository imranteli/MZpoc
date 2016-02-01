#
# Cookbook Name:: mzpoc-test
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'Install Apache' do
  case node[:platform]
  when 'redhat', 'centos'
    package_name 'httpd'
  when 'ubuntu', 'debian'
    package_name 'apache2'
  end
end

service 'httpd' do
  action :start
end
