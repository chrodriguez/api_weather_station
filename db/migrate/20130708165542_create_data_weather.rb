class CreateDataWeather < ActiveRecord::Migration
  def up
    create_table :weather_data do |t|
      t.datetime  :captured_at
      t.decimal   :temperature
      t.decimal   :high_temperature
      t.decimal   :low_temperature
      t.decimal   :humidity
      t.decimal   :dew
      t.decimal   :wind_speed
      t.string    :wind_direction
      t.decimal   :wind_run
      t.decimal   :hi_speed
      t.string    :hi_dir
      t.decimal   :wind_chill
      t.decimal   :heat
      t.decimal   :thw
      t.decimal   :thsw
      t.decimal   :bar
      t.decimal   :rain
      t.decimal   :rain_rate
      t.decimal   :solar_radiation
      t.decimal   :solar_energy
      t.decimal   :hi_solar_radiation
      t.decimal   :uv
      t.decimal   :uv_dose
      t.decimal   :hi_uv
      t.decimal   :heat_d_d
      t.decimal   :in_temperature
      t.decimal   :in_humidity
      t.decimal   :in_dew
      t.decimal   :in_heat
      t.decimal   :in_emc
      t.decimal   :in_air_density
      t.decimal   :et
      t.decimal   :wind_samp
      t.decimal   :wind_tx
      t.decimal   :iss_recept
      t.decimal   :arc_int
    end
  end

  def down
    drop_table :weather_data
  end
end
