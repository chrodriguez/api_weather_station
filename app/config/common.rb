class Api < Sinatra::Base
  set :root, File.join(File.dirname(__FILE__),'..', '..')
  set :views, File.join(File.dirname(__FILE__), '..', 'views')
  register Sinatra::ActiveRecordExtension
end

