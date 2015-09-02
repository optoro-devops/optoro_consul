node.override['consul']['service_mode'] = 'client'
node.default['consul']['serve_ui'] = false
include_recipe 'consul'
