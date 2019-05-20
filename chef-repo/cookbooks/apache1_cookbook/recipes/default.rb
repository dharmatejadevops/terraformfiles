#
# Cookbook:: apache1_cookbook
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
 
 file '/home/ubuntu/1.txt' do
     content 'hello'
     action :create
 end
 
