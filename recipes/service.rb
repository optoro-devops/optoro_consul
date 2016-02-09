include_recipe 'consul'

consul_definition node['optoro_consul']['service']['name'] do
  type 'service'
  parameters(node['optoro_consul']['service'])
  notifies :reload, 'consul_service[consul]', :delayed
end
