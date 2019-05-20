#
# Cookbook:: .
# Recipe:: apache2
#
# Copyright:: 2019, The Authors, All Rights Reserved.
node['apache2']['apache']['package_ubuntu']
node['apache2']['apache']['package_redhat']
if node['platform'] == 'ubuntu' then
apt_update 'name' do
    action :update
end
end
if node['platform'] == 'redhat' then
    package package-redhat do
        action :install
    end
    service package-redhat do
        action :start
    end
else
    package package-ubuntu do
        action :install
    end
    service package-ubuntu do
        action :start
    end
end

    
    
    
