# Force consul service to use sysvinit
poise_service_options 'consul' do
  provider 'sysvinit'
end

# Disable Upstart consul service
service 'consul' do
  provider Chef::Provider::Service::Upstart
  action [:stop, :disable]
end

file '/etc/init/consul.conf' do
  action :delete
end

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
