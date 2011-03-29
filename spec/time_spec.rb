require "spec_helper"

describe Time do

  describe ".to_datetime" do
    context "UTC" do
      subject {Time.utc(2011, 3, 29, 10, 45, 05).to_datetime}
      it {should eq DateTime.civil(2011, 3, 29, 10, 45, 05, "UTC")}
    end

    context "local timezone" do
      subject {Time.local(2011, 3, 29, 10, 45, 05).to_datetime}
      it {should eq DateTime.civil(2011, 3, 29, 10, 45, 05, subject.zone)}
    end
  end

  describe ".jd" do
    subject {Time.now.jd}
    it {should eq Date.today.jd}
  end

  describe ".solar_noon(longitude)" do

    context "DST time – 2011-03-26 11:42:36 MDT at -105.0" do
      subject {Time.local(2011, 3, 26, 11, 42, 36).solar_noon(-105.0)}
      it {should be_within_a_minute_of Time.utc(2011, 3, 26, 19, 5, 00)}
      it {should be_instance_of Time}
    end

    context "UTC time – 2001-06-12 19:18:15 UTC at 82.5" do
      subject {Time.utc(2001, 6, 12, 19, 18, 15).solar_noon(82.5)}
      it {should be_within_a_minute_of Time.utc(2001, 6, 12, 6, 29, 00)}
      it {should be_instance_of Time}
    end

    # FIXME: Not 100% sure that this is correct
    context "future time – 2031-11-28 05:07:26 MDT at 132.2" do
      subject {Time.utc(2031, 11, 28, 5, 7, 26).solar_noon(132.2)}
      it {should be_within_a_minute_of Time.utc(2031, 11, 28, 2, 59, 00)}
      it {should be_instance_of Time}
    end

  end

end