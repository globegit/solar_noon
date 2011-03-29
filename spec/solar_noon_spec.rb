require "spec_helper"

describe SolarNoon do

  describe "version" do
    subject {SolarNoon::VERSION}
    it {should_not be_nil}
    it {should eq "0.0.1"}
  end

end