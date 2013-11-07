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

  get '/add_link' do
    erb :add_link
  end

  post '/add_link' do
    #"Wikipedia"
    url = params["url"]
    title = params["title"]
    tag = params["tag"]
    p "url: #{url}, title: #{title}, tag: #{tag}"
    tag_object = Tag.create({:text => tag})
    p "tag_object text: #{tag_object.text}"
    tag_object_array = [] << tag_object
    Linkdb.create({"url" => url, "title" => title, "tags" => tag_object_array})
    redirect to ('/')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
