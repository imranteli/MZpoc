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
    aFile.close
    file_r = run_context.resource_collection.find(:file => "/some_file")
    file_r.content zipname
  end
  action :nothing
end


windows_zipfile 'D:/MozartV2_POC/' do
  source lazy "D:/mzzipcode/Deployments/#{zipname}"
  action :unzip
end

