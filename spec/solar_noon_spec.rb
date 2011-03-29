require "spec_helper"

describe SolarNoon do

  describe "version" do
    subject {SolarNoon::VERSION}
    it {should_not be_nil}
    it {should eq "0.0.1"}
  end

  describe "#calculate" do
    it "should work with a Date and longitude"
    it "should work with a DateTime and longitude"
    it "should work with a Time and longitude"
  end

  describe "#jd_centuries" do
    it "should take a Date and return a float"
    it "should take a DateTime and return a float"
    it "should take a Time and return a float"
  end

  describe "#true_solar_time_diff_mean_solar_time" do
    it "needs to be tested"
  end

  describe "#obliquity_correction" do
    it "needs to be tested"
  end

  describe "#geometric_mean_longitude_of_sun" do
    it "needs to be tested"
  end

  describe "#earth_orbit_eccentricity" do
    it "needs to be tested"
  end

  describe "#geometric_mean_anomaly_sun" do
    it "needs to be tested"
  end

  describe "#mean_obliquity_of_ecliptic" do
    it "needs to be tested"
  end

  describe "#degree_to_radians" do
    it "needs to be tested"
  end

  describe "#radian_to_degrees" do
    it "needs to be tested"
  end

end