module Weather
  class Data
    attr_accessor :captured_at, :temperature, :humidity, :dew, :bar
    def initialize(h={})
      h.each do |x,y|
        send("#{x}=",y)
      end
    end
  end
end
