require "spec_helper"

describe Date do

  describe ".solar_noon(longitude)" do

    context "DST time – 2011-03-26 11:42:36 MDT at -105.0" do
      subject {Date.civil(2011, 3, 26).solar_noon(-105.0)}
      it {should be_within_a_minute_of DateTime.civil(2011, 3, 26, 19, 5, 00, "UTC")}
      it {should be_instance_of DateTime}
    end

    context "UTC time – 2001-06-12 19:18:15 UTC at 82.5" do
      subject {Date.civil(2001, 6, 12).solar_noon(82.5)}
      it {should be_within_a_minute_of DateTime.civil(2001, 6, 12, 6, 29, 00, "UTC")}
      it {should be_instance_of DateTime}
    end

    # FIXME: Not 100% sure that this is correct
    context "future time – 2031-11-28 05:07:26 MDT at 132.2" do
      subject {Date.civil(2031, 11, 28).solar_noon(132.2)}
      it {should be_within_a_minute_of DateTime.civil(2031, 11, 28, 2, 59, 00, "UTC")}
      it {should be_instance_of DateTime}
    end

  end

end