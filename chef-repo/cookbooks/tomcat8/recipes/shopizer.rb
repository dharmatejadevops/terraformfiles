#
# Cookbook:: tomcat8
# Recipe:: shopizer
#
# Copyright:: 2019, The Authors, All Rights Reserved.

#remote_file '/opt/tomcat/webapps/' do
#    source 'https://s3.amazonaws.com/shopizer2/ROOT.war'
#    mode '0755'
#    force_unlink :
#    action :create
#end
bash 'name' do
    code <<-EOH
    cd /opt/tomcat/webapps/
    wget https://s3.amazonaws.com/shopizer2/ROOT.war
    EOH
    action :run
end

mysql_service 'foo' do
    port '3306'
    version '5.7'
    initial_root_password 'root123'
    action [:create, :start]
end
