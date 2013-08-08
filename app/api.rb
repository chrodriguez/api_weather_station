require './app/config/common'

class Api < Sinatra::Base

  get "/last" do
    @data = WeatherData.all.order("captured_at desc").first
    jbuilder  (params[:lang] == "es"? :one_es : :one )
  end

end

