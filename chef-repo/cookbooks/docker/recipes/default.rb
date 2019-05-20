#
# Cookbook:: docker
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
if node['platform'] =='ubuntu' then 
apt_update 'update' do
    action :update
end
apt_package 'apache2' do
    action :install
end
service 'apache2' do
    action :start
end

else 
package 'httpd' do
    action :install
end

service 'httpd' do
    action :start
end
end



