require 'spec_helper'

describe 'optoro_consul::default' do
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
end
