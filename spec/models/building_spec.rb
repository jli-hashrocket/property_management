require 'spec_helper'

describe Building do
  it { should have_valid(:address).when("123 some street") }
  it { should_not have_valid(:address).when(nil,'') }
  it { should have_valid(:city).when("Cambridge") }
  it { should_not have_valid(:city).when(nil,'') }
  it { should have_valid(:state).when("DC") }
  it { should_not have_valid(:state).when(nil,'','Norway') }
  it { should have_valid(:zip).when(02134) }
  it { should_not have_valid(:address).when(nil,'') }

  it { should belong_to(:owner).dependent(:destroy) }
end
