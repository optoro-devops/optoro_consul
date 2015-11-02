default['consul']['version'] = '0.5.2'
default['consul']['checksums'] = {
  '0.5.2_linux_amd64'  => '171cf4074bfca3b1e46112105738985783f19c47f4408377241b868affa9d445',
  '0.5.2_web_ui'  => 'ad883aa52e1c0136ab1492bbcedad1210235f26d59719fb6de3ef6464f1ff3b1'
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
