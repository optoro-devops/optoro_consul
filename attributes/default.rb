default['consul']['version'] = '0.6.4'
default['consul']['checksums'] = {
  '0.6.4_linux_amd64' => 'abdf0e1856292468e2c9971420d73b805e93888e006c76324ae39416edcf0627',
  '0.6.4_web_ui' => '5f8841b51e0e3e2eb1f1dc66a47310ae42b0448e77df14c83bb49e0e0d5fa4b7'
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
