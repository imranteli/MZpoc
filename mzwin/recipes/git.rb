#
# Cookbook Name:: mzwin
# Recipe:: git
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


directory 'D:/mzzipcode/' do
  action :create
end

git 'D:/mzzipcode/' do
  repository 'https://github.com/imranteli/MZpoc.git'
  revision 'artifacts'
  action :sync
end

windows_zipfile 'D:/MozartV2_POCi/' do
  source 'D:/mzzipcode/artifacts/file21.zip'
  action :unzip
end
