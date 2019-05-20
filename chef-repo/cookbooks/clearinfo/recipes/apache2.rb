apt_update 'upadte' do
    ingnore_falure true
    action :update
    only_if node['platform'] == 'ubuntu' 
end
package_name = node['clearinfo']['apache_package_name']

apt_package package_name do
    action :install
end

service package_name do
    action :start
end
package 'package_name' do
    action :install
end

