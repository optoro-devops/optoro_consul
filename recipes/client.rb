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
