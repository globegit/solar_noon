class Time

  # FROM: active_support/core_ext/time/publicize_conversion_methods.rb
  # Ruby 1.8-cvs and early 1.9 series define private Time#to_date
  %w(to_date to_datetime).each do |method|
    if private_instance_methods.include?(method) || private_instance_methods.include?(method.to_sym)
      public method
    end
  end

  # Get the date as a Julian Day Number.
  def jd
    to_datetime.jd
  end

  # return a Time instance of solar noon for the specified day and longitude
  def solar_noon(longitude)
    SolarNoon.calculate(self, longitude)
  end

end
