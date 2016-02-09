#
# Cookbook Name:: mzpoc-test
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'httpd'

service 'httpd' do
  action :start
end

package 'mysql-server'

service 'mysqld' do
  action :start
end
