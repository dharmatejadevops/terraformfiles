#
# Cookbook:: new_lamp
# Recipe:: newlamp
#
# Copyright:: 2019, The Authors, All Rights Reserved.
apt_update 'update' do
    action :update
end
package 'apache2' do
    action :install
    #notifies :restart, 'resource[apache2]'
end
 
service 'apache2' do
    action :start
end
packages = [ 'php', 'libapache2-mod-php']
package  packages do
    action :install
end

file '/var/www/html/info.php' do
    content '<?php phpinfo(); ?>'
    action :create
end
service 'apache2' do
    action :restart
end

