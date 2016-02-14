# Recipe:: git
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


directory 'D:/mzzipcode/' do
  action :create
end

git 'D:/mzzipcode/' do
  repository "https://kdonekal:Epam1234@github.com/AllianceGlobalServices/Verisk-Mozart.git"
  revision 'Artifacts'
  action :sync
end

windows_zipfile 'D:/MozartV2_POC/' do
  source "#{node['mzwin']['version']}"
  action :unzip
end
