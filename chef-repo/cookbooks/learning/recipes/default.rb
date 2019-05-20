#
# Cookbook:: learning
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
file '/home/ubuntu/hello.txt' do
    content 'Hello chef'
    action :create
end
