require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end
  
  post "/customjoke" do
    @theme = params["theme"]
    @quality = params["quality"]
    @length = params["length"]
    @answer = "#{joke(@theme, @quality, @length)}"
    erb :jokepage
  end
  
end
