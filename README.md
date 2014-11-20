Description
===========

Get's you a "ready to use" executable "jira_cli" to provide a convenient way to automate administration tasks and content for JIRA
See https://bobswift.atlassian.net/wiki/display/ACLI/Atlassian+CLI+General+Documentation for more details on JIRA cli

Requirements
============

You need Java 1.7 to make use of the executable.
The version of java needed depends on the jira cli version.

Attributes
==========

default['jira_cli']['version'] = nil
default['jira_cli']['username'] = nil
default['jira_cli']['password'] = nil
default['jira_cli']['server'] = nil

Usage
=====

Add to run list:
"recipe[jira_cli]"

Then you should be able to do
jira_cli -a <action>
