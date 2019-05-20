
if  node['platform_family'] == 'debian'
    default['clearinfo']['apache_package-name'] = 'apache2'
elsif node['platform_family'] == 'rehl'
    default['clearinfo']['apache_package_name'] = 'httpd'
end 
default['clearinfo']['php_packages'] = 'php'

default['clearinfo']['php_app_path'] = '/var/www/html/info.php'

default['clearinfo']['web_content'] = '<?php phpinfo(); ?>'
