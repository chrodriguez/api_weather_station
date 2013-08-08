class WeatherData < ActiveRecord::Base
  def wind_direction_es
    self[:wind_direction].gsub /W/,"O" if self[:wind_direction]
  end
end
