optoro_consul_service 'test_service' do
  port 8080
  check(
    script: 'echo OK'
  )
  tags %w(foo bar)
  notifies :reload, 'consul_service[consul]', :delayed
end
