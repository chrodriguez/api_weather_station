require 'time'

module Weather
  module Feed
    class File
      def self.get_data(file)
        data_read = []
        lines = IO::readlines(file)
        lines.slice!(0,3)
        lines.each do | line |
         fields = line.split
         data_read << Data.new(
           captured_at: Time.strptime("#{fields[0]} #{fields[1]}m", "%d/%m/%Y %I:%M%P"),
           temperature: fields[2],
           humidity: fields[5],
           dew: fields[6],
           bar: fields[16]
         )
        end
        return data_read
      end
    end
  end
end

