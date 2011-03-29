class DateTime

  # return a DateTime instance of solar noon for the specified day and longitude
  def solar_noon(longitude)
    SolarNoon.calculate(self, longitude)
  end

end
