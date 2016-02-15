# Recipe:: git
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


directory node['mzwin']['tmpdir'] do
  action :create
end

git node['mzwin']['tmpdir'] do
  repository node['mzwin']['giturl']
  revision 'Artifacts'
  action :sync
end

windows_zipfile node['mzwin']['appdir'] do
  source "#{node['mzwin']['artifacts']['version']}"
  action :unzip
end
