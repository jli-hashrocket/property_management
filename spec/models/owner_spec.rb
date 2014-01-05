require 'spec_helper'

describe Owner do
  it { should have_valid(:last_name).when('Thompson') }
  it { should_not have_valid(:last_name).when(nil, '') }
  it { should have_valid(:first_name).when("Thomas") }
  it { should_not have_valid(:first_name).when(nil,'') }
  it { should have_valid(:email).when("tthomas@test.com") }
  it { should_not have_valid(:email).when(nil,'', 12323523, "khkjehasef") }

  it { should have_many(:buildings) }
end
