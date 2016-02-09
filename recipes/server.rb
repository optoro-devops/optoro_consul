node.default['consul']['config']['bootstrap_expect'] = node['optoro_consul']['bootstrap_expect']
node.default['consul']['config']['server'] = true
node.default['consul']['config']['start_join'] = node['optoro_consul']['servers']
node.default['consul']['config']['enable_syslog'] = true
include_recipe 'optoro_consul::default'

consul_ui 'consul_ui' do
  version '0.6.3'
end
