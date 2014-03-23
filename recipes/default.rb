#
# Cookbook Name:: matt-rbenv
# Recipe:: default
#
# Copyright (C) 2014 Matt Chun-Lum
#
# All rights reserved - Do Not Redistribute

include_recipe 'rbenv::default'
include_recipe 'rbenv::ruby_build'

# install specified rubies and bundler for each
node['matt-rbenv']['rubies'].each do |version|
  rbenv_ruby version do
    global true if node['matt-rbenv']['global'] == version
  end

  rbenv_gem 'bundler' do
    ruby_version version
  end
end
