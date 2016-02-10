#
# Cookbook Name:: mzwin
# Recipe:: git
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

git '/' do
  repository 'https://github.com/imranteli/MZpoc.git'
  revision 'artifacts'
  action :sync
end
