#
# Cookbook Name:: mzwin
# Recipe:: git
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

git 'D:\\MozartV2_POC\\' do
  repository 'https://github.com/imranteli/MZpoc.git'
  revision 'artifacts'
  action :sync
end
