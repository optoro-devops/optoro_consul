default['optoro_consul']['bootstrap_expect'] = 5
default['optoro_consul']['servers'] = [
  'consul-001.optoro.io',
  'consul-002.optoro.io',
  'consul-003.optoro.io',
  'consul-004.optoro.io',
  'consul-005.optoro.io'
]
default['optoro_consul']['datacenter'] = 'us_east'
default['optoro_consul']['enable_syslog'] = true
default['optoro_consul']['service_mode'] = 'cluster'
default['optoro_consul']['client_address'] = '0.0.0.0'
default['optoro_consul']['serve_ui'] = true
default['optoro_consul']['config_dir'] = '/etc/consul/conf.d'
default['optoro_consul']['config_file'] = '/etc/consul/consul.json'
