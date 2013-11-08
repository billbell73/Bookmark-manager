require 'sinatra'
require 'sinatra/base'
require 'rack-flash'

require_relative 'server'


class BookmarksManager < Sinatra::Base
	set :views, File.join(File.dirname(__FILE__), '..', 'views') 


  enable :sessions
  set :session_secret, 'super secret'

  use Rack::Flash

  get '/' do
    #Linkdb.create({"title" => "Makers Academy", "url" => "blah"})
    # Linkdb.create({"title" => "Superpage", "url" => "blah"})
  	# @links =[Link.new('A new page I found', 'Page for saying goodbye', 'http://bye.com'), Link.new('Another page', 'Page for saying hi', 'http://hi.com')]
    @links = Linkdb.all
    erb :index
  end

  post '/' do
    session[:user_id] = nil
    redirect to ('/')
  end

  get '/sign_in' do
  	erb :sign_in
  end

  post '/sign_in' do
  	email, password = params[:email], params[:password]
    user = User.authenticate(email, password)
    if user
      session[:user_id] = user.id
      redirect to('/')
    else
      flash[:errors] = ["Your email or password is incorrect. Please try again"]
      erb :sign_in
    end
  end

  get '/add_link' do
    erb :add_link
  end

  post '/add_link' do
    url = params["url"]
    title = params["title"]
    tag = params["tag"]
    tag_object = Tag.create({:text => tag})
    tag_object_array = [] << tag_object
    Linkdb.create({"url" => url, "title" => title, "tags" => tag_object_array})
    redirect to ('/')
  end

  get '/sign_up' do
    erb :sign_up
  end

  post '/sign_up' do
    email = params["email"]
    password = params["password"]
    confirm_password = params["confirm_password"]
    user = User.create({:email => email, :password => password, :password_confirmation => confirm_password})
    if user.save
      session[:user_id] = user.id
      redirect to('/')
    else
      flash.now[:errors] = user.errors.full_messages
      # flash[:notice] = "Sorry, password and password confirmation did not match"
      erb :sign_up
    end
  end

  helpers do

    def current_user   
      @current_user ||=User.get(session[:user_id]) if session[:user_id]
    end

  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
