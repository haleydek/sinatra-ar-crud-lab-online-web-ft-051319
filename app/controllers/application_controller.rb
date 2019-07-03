
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/articles/new' do
    erb :new
  end
  
  post '/articles' do
    Article.create(params[:article][:title], params[:article][:content])
    binding.pry
    erb :index
  end
end
