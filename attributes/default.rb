default['consul']['client_address'] = '0.0.0.0'
default['consul']['version'] = '0.6.4'
default['consul']['config_dir'] = '/etc/consul/conf.d'

default['consul']['config']['enable_syslog'] = false

# Setting the ONE TRUE NAME of consul
override!['consul']['service_name'] = 'consul'

# This needs to be discoverable
# Currently set in Environment on chef-server
# if node['chef_environment'] == 'sdc-optiturn' # ~FC039
# default['consul']['config']['start_join'] = %w(
# 10.1.8.103
# 10.1.8.101
# 10.1.8.100
# 10.1.8.87
# 10.1.8.86
# )
# elsif node['chef_environment'] == 'triton' # ~FC039
# default['consul']['config']['start_join'] = %w(
# 10.1.4.12
# 10.1.4.164
# 10.1.4.23
# 10.1.4.160
# 10.1.4.208
# )
