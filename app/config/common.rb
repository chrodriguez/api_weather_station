class Api < Sinatra::Base
  set :root, File.join(File.dirname(__FILE__),'..', '..')
  set :views, File.join(File.dirname(__FILE__), '..', 'views')
  p public_folder
  register Sinatra::ActiveRecordExtension
end

