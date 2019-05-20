#
# Cookbook:: tomcat8
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
if node['platform'] == 'ubuntu' then
    include_recipe 'tomcat8::tomcat8'
#    include_recipe 'tomcat8::shopizer'
end