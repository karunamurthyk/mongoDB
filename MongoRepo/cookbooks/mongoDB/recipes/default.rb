#
# Cookbook Name:: mongoDB
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'mongoDB::repo_setup'

mongodb_build "Install, Configure and Start MongoDB" do
   action :setup_startup
end
