require 'sinatra/base'
require_relative 'server'

class BookmarksManager < Sinatra::Base
	set :views, File.join(File.dirname(__FILE__), '..', 'views') 


  get '/' do
    #Linkdb.create({"title" => "Makers Academy", "url" => "blah"})
    # Linkdb.create({"title" => "Superpage", "url" => "blah"})
  	# @links =[Link.new('A new page I found', 'Page for saying goodbye', 'http://bye.com'), Link.new('Another page', 'Page for saying hi', 'http://hi.com')]
    @links = Linkdb.all
    erb :index
  end

  get '/sign_in' do
  	erb :sign_in
  end

  post '/sign_in' do
  	# @details = params[]
  	"Welcome"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
