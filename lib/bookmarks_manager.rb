require 'sinatra/base'
require_relative 'link'

class BookmarksManager < Sinatra::Base
	set :views, File.join(File.dirname(__FILE__), '..', 'views') 


  get '/' do
  	@links =[]
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
