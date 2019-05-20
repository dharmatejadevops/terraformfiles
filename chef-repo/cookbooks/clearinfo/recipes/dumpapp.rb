file node['clearinfo']['php_app_path'] do
    content node['clearinfo']['web_content']
    action :create
end

service 'restart webserver again' do
    service_name node['clearinfo']['apache_package_name']
    action :restart
end


