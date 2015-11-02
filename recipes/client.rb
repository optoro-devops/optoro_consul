node.override['consul']['service_mode'] = 'client'
node.default['consul']['serve_ui'] = false
node.default['consul']['service']['server'] = false
node.default['consul']['service']['expect_bootstrap'] = 0
include_recipe 'consul'
