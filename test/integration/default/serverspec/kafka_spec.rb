require 'serverspec'

# Required by serverspec
set :backend, :exec

describe file('/usr/local/kafka/bin/kafka-server-start.sh') do
  it { should exist }
  it { should be_file }
end