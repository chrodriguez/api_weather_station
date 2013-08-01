require './app/config/common'

class Api < Sinatra::Base

  get "/last" do
    @data = WeatherData.all.order("captured_at desc").first
    jbuilder :one
  end

end

