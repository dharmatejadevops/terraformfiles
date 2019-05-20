apt_update 'name' do
    action :update
end

apt_package 'apache2' do
    action :install
end
service 'apache2' do
    action :start
end
