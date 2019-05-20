#
# Cookbook:: clearinfo
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
if node['platform'] =='ubuntu' or node['platform'] == 'redhat'
   include_recipe 'clearinfo::apache2' 
   include_recipe 'clearinfo::php'
   include_recipe 'clearinfo::dumpapp'
else
    # if platform not exitst
end





