default['consul']['version'] = '0.6.3'
default['consul']['checksums'] = {
  '0.6.3_linux_amd64' => 'b0532c61fec4a4f6d130c893fd8954ec007a6ad93effbe283a39224ed237e250',
  '0.6.3_web_ui' => '93bbb300cacfe8de90fb3bd5ede7d37ae6ce014898edc520b9c96a676b2bbb72'
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
