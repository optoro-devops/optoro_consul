node.default['consul']['base_url'] = "https://releases.hashicorp.com/consul/#{node['consul']['version']}/consul_%{version}.zip"
include_recipe 'consul'
include_recipe 'consul::ui'
