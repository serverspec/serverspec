require 'spec_helper'

set :os, :family => 'solaris'

describe group('root') do
  it { is_expected.to have_gid 0 }
end
