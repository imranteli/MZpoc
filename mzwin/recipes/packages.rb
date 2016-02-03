#
# Cookbook Name:: mzwin
# Recipe:: packages
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

%w{ IIS-WebServerRole IIS-WebServer }.each do |feature|
  windows_feature feature do
    action :install
  end
end

include_recipe "dotnetframework-master::default"
