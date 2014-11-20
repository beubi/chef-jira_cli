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

default['jira_cli']['version'] = 'jira-cli-4.0.0-SNAPSHOT'
default['jira_cli']['username'] = nil
default['jira_cli']['password'] = nil
default['jira_cli']['server'] = nil

Usage
=====

Add to run list:
"recipe[jira_cli]"

Then you should be able to do
jira_cli -a <action>

License & Authors
-----------------
- Author:: Hugo Fonseca (<hugo.fonseca@beubi.com>)

```text
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
