RSpec::Matchers.define :have_ipnat_rule do |rule|
  match do |ipnat|
    backend.check_ipnat_rule(rule)
  end
end
