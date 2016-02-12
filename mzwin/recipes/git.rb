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
  repository "https://kdonekal:Epam1234@github.com/AllianceGlobalServices/Verisk-Mozart.git"
  revision 'Artifacts'
  action :sync
  notifies :run, 'ruby_block[extract zipname]', :immediately
end


ruby_block 'extract zipname' do
  block do
    aFile = File.new(node['mzwin']['zippath'], "r")
    zipname = aFile.read.strip
    node.default['mzwin']['zipname'] = zipname
    node.override['mzwin']['zipname'] = zipname
    aFile.close
    dep1 = Chef::Provider::Windows::zipfile.new('D:/MozartV2_POC/', run_context)
    dep1.source "D:/mzzipcode/Deployments/#{node['mzwin']['zipname']}"
    dep1.action :unzip 
  end
  action :nothing
end


#windows_zipfile 'D:/MozartV2_POC/' do
#  source "D:/mzzipcode/Deployments/#{node['mzwin']['zipname']}"
#  action :unzip
#end

