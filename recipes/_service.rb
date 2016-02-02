optoro_consul_service 'test_service' do
  port 8080
  params node['optoro_consul']['service']
end
