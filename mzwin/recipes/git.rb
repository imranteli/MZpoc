# Recipe:: git
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

time =  Time.new.strftime("%Y%m%d%H%M%S")

directory node['mzwin']['tmpdir'] do
  action :create
end

git node['mzwin']['tmpdir'] do
  repository node['mzwin']['giturl']
  revision 'Artifacts'
  action :sync
end

directory node['mzwin']['backupdir'] do
  action :create
end


iis_site node['mzwin']['sitename'] do
  action :stop
end


windows_zipfile "#{node['mzwin']['backupdir']}/#{time}.zip"  do
  source node['mzwin']['appdir']
  action :zip
end

batch 'Delete existing code base' do
  code <<-EOH
  D:
  cd #{node['mzwin']['appdir']}
  del *.* -f
  EOH
end

windows_zipfile node['mzwin']['appdir'] do
  source "node['mzwin']['tmpdir']/Deployments/#{node['mzwin']['artifacts']['version']}"
  overwrite true
  action :unzip
end
