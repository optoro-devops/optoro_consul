default['consul']['bootstrap_expect'] = '5'
default['consul']['servers'] = [
  'consul-001.optoro.io',
  'consul-002.optoro.io',
  'consul-003.optoro.io',
  'consul-004.optoro.io',
  'consul-005.optoro.io'
]
default['consul']['datacenter'] = 'us_east'
default['consul']['enable_syslog'] = true
default['consul']['service_mode'] = 'cluster'
default['consul']['client_address'] = '0.0.0.0'
default['consul']['serve_ui'] = true
