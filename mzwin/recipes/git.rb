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
end


