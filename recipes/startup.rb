#
# Cookbook Name:: singlenode-hadoop
# Recipe:: default
#
# Copyright (C) 2014 Ryan Briones

ruby_block "start namenode" do
  block do
    resources("service[hadoop-hdfs-namenode]").run_action(:start)
  end 
end

ruby_block "start datanode" do
  block do
    resources("service[hadoop-hdfs-datanode]").run_action(:start)
  end 
end
