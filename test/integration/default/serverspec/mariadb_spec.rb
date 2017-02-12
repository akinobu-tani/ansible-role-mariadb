require 'serverspec'

set :backend, :exec

def log_files
  %w(/var/log/mysql/error.log /var/log/mysql/slow.log)
end

describe command('mysql --version') do
  its(:exit_status) { should eq 0 }
end

describe service('mariadb') do
  it { should be_running }
  it { should be_enabled }
end

log_files.each do |file|
  describe file(file) do
    it { should exist }
  end
end

describe command('yum install -y logrotate') do
  its(:exit_status) { should eq 0 }
end

describe command('logrotate -fv /etc/logrotate.d/mysql') do
  its(:exit_status) { should eq 0 }
end

log_files.each do |file|
  describe file(file) do
    it { should be_mode 644 }
  end

  describe file("#{file}-#{Time.now.strftime('%Y%m%d')}") do
    it { should exist }
  end
end
