# Recipe:: git
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


directory node['mzwin']['tmpdir'] do
  action :create
end

git node['mzwin']['tmpdir'] do
  repository "https://kdonekal:Epam1234@github.com/AllianceGlobalServices/Verisk-Mozart.git"
  revision 'Artifacts'
  action :sync
end

windows_zipfile node['mzwin']['appdir'] do
  source "#{node['mzwin']['artifacts']['version']}"
  action :unzip
end
