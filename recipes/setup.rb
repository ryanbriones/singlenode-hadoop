#
# Cookbook Name:: singlenode-hadoop
# Recipe:: setup
#
# Copyright (C) 2014 Ryan Briones

if node.key?('java') && node['java'].key?('java_home')

  Chef::Log.info("JAVA_HOME = #{node['java']['java_home']}")

  # set in ruby environment for commands like hdfs namenode -format
  ENV['JAVA_HOME'] = node['java']['java_home']
  # set in hadoop_env
  node.default['hadoop']['hadoop_env']['java_home'] = node['java']['java_home']
end

include_recipe "hadoop::default"
include_recipe "hadoop::hadoop_yarn_resourcemanager"
include_recipe "hadoop::hadoop_hdfs_namenode"
include_recipe "hadoop::hadoop_hdfs_datanode"
include_recipe "hadoop::hadoop_hdfs_secondarynamenode"