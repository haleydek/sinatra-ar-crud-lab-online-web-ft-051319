
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get '/' do
  end

  get '/articles/new' do
    erb :new
  end
  
  post '/articles' do
    Article.create(params[:article][:title], params[:article][:content])
    redirect :'/articles/:id'
  end
  
  get '/articles/:id' do
  end
end
