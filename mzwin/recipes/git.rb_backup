#
# Cookbook Name:: mzwin
# Recipe:: git
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

git_client 'default' do
  action :install
end


directory 'D:/mzzipcode/' do
  action :create
end

git 'D:/mzzipcode/' do
  repository 'https://github.com/imranteli/MZpoc.git'
  revision 'artifacts'
  action :sync
end

aFile = File.new("D:/mzzipcode/artifacts/filename.txt", "r")
zipname = aFile.read.strip
aFile.close

windows_zipfile 'D:/MozartV2_POC/' do
  source "D:/mzzipcode/artifacts/#{zipname}"
  action :unzip
end


