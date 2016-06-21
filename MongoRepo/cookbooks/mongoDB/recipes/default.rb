#
# Cookbook Name:: mongoDB
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'mongoDB::repo_setup'
include_recipe 'mongoDB::install'
include_recipe 'mongoDB::configure'
include_recipe 'mongoDB::service_setup'
