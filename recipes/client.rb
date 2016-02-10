node.default['consul']['base_url'] = "https://releases.hashicorp.com/consul/#{node['consul']['version']}/consul_%{version}.zip"
node.override['consul']['service_mode'] = 'client'
node.default['consul']['serve_ui'] = false
node.default['consul']['service']['server'] = false
node.default['consul']['service']['expect_bootstrap'] = 0
include_recipe 'consul'

logrotate_app 'consul_agent' do
  frequency 'daily'
  path '/var/log/consul.log'
  rotate '6'
  options %w(missingok compress delaycompress dateext copytruncate)
  size '100M'
  template_mode '0644'
  postrotate 'service consul reload'
end
