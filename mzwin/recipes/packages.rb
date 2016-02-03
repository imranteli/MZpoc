#
# Cookbook Name:: mzwin
# Recipe:: packages
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

#%w{ IIS-WebServerRole IIS-WebServer }.each do |feature|
#  windows_feature feature do
#    action :install
#  end
#end

powershell_script 'Install IIS' do
  code 'Add-WindowsFeature Web-Server'
  guard_interpreter :powershell_script
  not_if "(Get-WindowsFeature -Name Web-Server).Installed"
end

include_recipe "dotnetframework-master::default"
