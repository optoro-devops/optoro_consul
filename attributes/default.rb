default['consul']['version'] = '0.5.0'
default['consul']['checksums'] = {
  '0.5.0_linux_amd64'  => '161f2a8803e31550bd92a00e95a3a517aa949714c19d3124c46e56cfdc97b088',
  '0.5.0_web_ui'  => '0081d08be9c0b1172939e92af5a7cf9ba4f90e54fae24a353299503b24bb8be9'
}
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
