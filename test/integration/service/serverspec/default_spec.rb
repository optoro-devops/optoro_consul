require 'spec_helper'

describe 'optoro_consul::server' do
  describe process('consul') do
    it { should be_running }
  end

  describe service('consul') do
    it { should be_enabled }
    it { should be_running }
  end

  describe file('/etc/consul/conf.d/test_service.json') do
    it { should be_file }
    its(:content) { should match(/test_service/) }
    its(:content) { should match(/testing/) }
  end

  describe command('curl http://localhost:8500/v1/catalog/service/test_service') do
    its(:stdout) { should match(/test_service/) }
  end

  describe command('curl http://localhost:8500/v1/health/checks/test_service') do
    its(:stdout) { should match(/passing/) }
  end
end
