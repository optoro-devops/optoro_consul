#users_manage node['consul']['service_user'] do
#  action [:remove, :create]
#end

package 'unzip' do
end

execute 'download_cleanup' do
  command 'rm -f /tmp/consul.zip'
  action :nothing
end

[node['consul']['config_dir'], node['consul']['data_dir']].each do |dir|
  directory dir do
    user node['consul']['service_user']
    user node['consul']['service_group']
    action :create
  end
end

execute 'extract_binary' do
  command 'unzip /tmp/consul.zip -d /usr/local/bin'
  action :nothing
  notifies :run, 'execute[download_cleanup]', :immediately
end

remote_file '/tmp/consul.zip'  do
  source node['consul']['service']['binary_url']
  checksum node['consul']['checksums']['0.5.0_linux_amd64']
  notifies :run, 'execute[extract_binary]', :immediately
  not_if { File.exist?('/usr/local/bin/consul') }
end

template '/etc/init.d/consul_agent' do
  source 'consul.init.erb'
  variables(
    consul_user: node['consul']['service_user'],
    config_dir: node['consul']['service']['config_dir']
  )
  mode '0755'
  action :create
end

optoro_consul_consul_definition "default" do
  type 'service'
  parameters(
    server: false,
    start_join: node['consul']['servers'],
    client_addr: node['consul']['client_addr'],
    datacenter: node['consul']['datacenter'],
    enable_syslog: node['consul']['enable_syslog']
  )
  notifies :restart, 'service[consul_agent]', :delayed
end


service 'consul_agent' do
  action [:enable, :start]
  supports(restart: true)
end
