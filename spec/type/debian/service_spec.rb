require 'spec_helper'

set :os, :family => 'debian'

describe service('sshd') do
  it { is_expected.to be_enabled }
end

describe service('sshd') do
  it { is_expected.to be_enabled.with_level(4) }
end
