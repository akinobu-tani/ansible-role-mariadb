require 'serverspec'

set :backend, :exec

describe command('mysql --version') do
  its(:exit_status) { should eq 0 }
end

describe service('mysql') do
  it { should be_running }
  it { should be_enabled }
end
