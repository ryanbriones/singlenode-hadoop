#
# Cookbook Name:: singlenode-hadoop
# Recipe:: default
#
# Copyright (C) 2014 Ryan Briones
#

include_recipe "java::default"

include_recipe "singlenode-hadoop::setup"
include_recipe "singlenode-hadoop::initialize"
include_recipe "singlenode-hadoop::startup"