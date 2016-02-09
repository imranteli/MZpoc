#
# Cookbook Name:: mzwin
# Recipe:: iis
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

iis_site 'Default Web Site' do
  action [:stop, :delete]
end
