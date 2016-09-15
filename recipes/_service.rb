consul_definition 'test_service' do
  type 'service'
  parameters(port: 8080)
  notifies :reload, 'consul_service[consul]', :delayed
end
