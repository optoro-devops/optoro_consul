require 'spec_helper'

describe 'optoro_consul::client' do
  describe process('consul') do
    it { should be_running }
  end

  describe service('consul') do
    it { should be_enabled }
    it { should be_running }
  end

  describe port(8500) do
    it { should be_listening }
  end

  describe file('/etc/consul/consul.json') do
    it { should be_file }
    it { should exist }
    its(:content) { should match(/start_join/) }
  end

  describe file('/etc/init/consul.conf') do
    it { should_not be_file }
    it { should_not exist }
  end

  describe file('/etc/init.d/consul') do
    it { should be_file }
    it { should exist }
  end
end
