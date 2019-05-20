#
# Cookbook:: .
# Recipe:: file
#
# Copyright:: 2019, The Authors, All Rights Reserved.

file '/home/azure/1.txt' do
    content 'hello'
    action :create
end