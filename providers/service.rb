def why_run_supported?
  true
end

use_inline_resources

action :create do

  service 'consul' do
    provider Chef::Provider::Service::Upstart
    supports [:restart, :start, :stop, :reload]
  end

  name = new_resource.service_name || node['optoro_consul']['service']['name']

  params = {
    name: name,
    checks: new_resource.checks,
    port: new_resource.port,
    address: node['fqdn']
  }

  file "#{node['consul']['config_dir']}/#{name}.json" do
    content(JSON.pretty_generate('service' => params))
    owner node['consul']['service_user']
    group node['consul']['service_group']
    notifies :reload, 'service[consul]', :immediately
  end

end
