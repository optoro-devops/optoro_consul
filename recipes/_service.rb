consul_definition 'test_service' do
  type 'service'
  parameters(node['optoro_consul']['service'])
  notifies :reload, 'consul_service[consul]', :delayed
end
