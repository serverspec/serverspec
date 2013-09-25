require 'spec_helper'

RSpec.configure do |c|
  c.os      = 'Solaris'
  c.backend = 'Exec'
end

describe default_gateway do
  let(:stdout) { "default via 192.168.1.1 dev eth1 \r\n" }

  its(:ipaddress) { should eq '192.168.1.1' }
  its(:command) { should eq "ip route | grep -E '^default |^default '" }

  its(:interface) { should eq 'eth1' }
  its(:command) { should eq "ip route | grep -E '^default |^default '" }

  its(:ipaddress) { should_not eq '192.168.1.2' }
  its(:interface) { should_not eq 'eth0'        }
end
