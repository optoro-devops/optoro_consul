optoro_consul_service 'test_service' do
  port 8080
  checks(node['optoro_consul']['service']['checks'])
end
