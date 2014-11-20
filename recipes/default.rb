#
# Cookbook Name:: jira_cli
# Recipe:: default
#
# Copyright 2012, Ubiprism Lda.
#
# All rights reserved - Do Not Redistribute
#

cli_version = node['jira_cli']['version']

remote_file "/tmp/jira-cli.zip" do
  source "https://bobswift.atlassian.net/wiki/download/attachments/16285777/#{cli_version}-distribution.zip"
  mode '0644'
end

package 'unzip'

execute "unzip /tmp/jira-cli.zip" do
  cwd '/tmp'
  action :run
  creates "/tmp/#{cli_version}/lib/#{cli_version}.jar"
end
execute "mv /tmp/#{cli_version} /opt/" do
  cwd '/tmp'
  action :run
  creates "/opt/#{cli_version}/lib/#{cli_version}.jar"
end

parameters = [
  '--server   "'+node['jira_cli']['server']+'"',
  '--user     "'+node['jira_cli']['username']+'"',
  '--password "'+node['jira_cli']['password']+'"'
]

jira_cli_cmd='
java -jar /opt/'+cli_version+'/lib/'+cli_version+'.jar '+parameters.join(" ")+' "$@"
'

file "/usr/bin/jira_cli" do
  owner "root"
  group "root"
  mode "0755"
  content jira_cli_cmd
  action :create_if_missing
end
