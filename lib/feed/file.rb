require 'time'
require './lib/model/weather_data'

module WeatherDataFeed
  class File
    @@logger = Logger.new(STDOUT)

    def self.logger
      return @@logger
    end

    def self.[](file)
      lines = IO::readlines(file)
      lines.slice!(0,3)
      lines.each do | line |
       fields = line.split
       begin
       WeatherData.create!(
        captured_at: Time.strptime("#{fields[0]} #{fields[1]}m", "%d/%m/%y %I:%M%P"),
        temperature: fields[2],
        high_temperature: fields[3],
        low_temperature: fields[4],
        humidity: fields[5],
        dew: fields[6],
        wind_speed: fields[7],
        wind_direction: fields[8], 
        wind_run: fields[9], 
        hi_speed: fields[10],
        hi_dir: fields[11],
        wind_chill: fields[12],
        heat: fields[13],
        thw: fields[14],
        thsw: fields[15],
        bar: fields[16],
        rain: fields[17],
        rain_rate: fields[18],
        solar_radiation: fields[19],
        solar_energy: fields[20],
        hi_solar_radiation: fields[21],
        uv: fields[22],
        uv_dose: fields[23],
        hi_uv: fields[24],
        heat_d_d: fields[25],
        in_temperature: fields[26],
        in_humidity: fields[27],
        in_dew: fields[28],
        in_heat: fields[29],
        in_emc: fields[30],
        in_air_density: fields[31],
        et: fields[32],
        wind_samp: fields[33],
        wind_tx: fields[34],
        iss_recept: fields[35],
        arc_int: fields[36]
       )
       rescue ActiveRecord::RecordNotUnique
         logger.info "Duplicate data, not inserting data for #{fields[0]} #{fields[1]}m"
       end
      end
    end
  end
end

