require 'serverspec'

# Required by serverspec
set :backend, :exec

describe file('/usr/local/kafka/bin/kafka-server-start.sh') do
  it { should exist }
  it { should be_file }
end

describe file('/usr/local/kafka/config/server.properties') do
  it { should exist }
  it { should be_file }
  its(:content) { should match /zookeeper\.connect=zookeeper:2181/ }
end