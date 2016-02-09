node.override['consul']['service_mode'] = 'client'
node.default['consul']['serve_ui'] = node['optoro_consul']['serve_ui']
node.default['consul']['config']['enable_syslog'] = node['optoro_consul']['enable_syslog']
node.default['consul']['config']['start_join'] = node['optoro_consul']['servers']
node.default['consul']['config']['datacenter'] = node['optoro_consul']['datacenter']
node.default['consul']['service']['config_dir'] = node['optoro_consul']['config_dir']

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
