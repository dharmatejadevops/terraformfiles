#
# Cookbook:: new_lamp
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
if node['platform'] == 'ubuntu' then
    include_recipe 'new_lamp::newlamp'
end
