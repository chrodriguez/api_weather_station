require 'bundler/setup'
require 'rake'
require File.expand_path('lib/weather', File.dirname(__FILE__))

namespace :weather do
  namespace :feed do

    desc "Importa datos desde un archivo"
    task :file, :file do |t,args|
      data = Weather::Feed::File.get_data(args.file)
      p data
    end

  end
end
