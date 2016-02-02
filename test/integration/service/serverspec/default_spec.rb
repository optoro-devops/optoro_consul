require 'spec_helper'

describe 'optoro_consul::default' do
  describe process('consul') do
    it { should be_running }
  end

  describe service('consul') do
    it { should be_enabled }
    it { should be_running }
  end

  describe file('/etc/consul.d/test_service.json') do
    it { should be_file }
    its(:content) { should match(/test_service/) }
    its(:content) { should match(/testing/) }
  end
end
