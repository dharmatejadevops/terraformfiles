#
# Cookbook:: kitchen
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
file '/home/ubuntu/readme.txt' do
    content 'created by chef'
    action :create
end