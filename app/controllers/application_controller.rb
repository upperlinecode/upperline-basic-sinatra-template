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
  
  get '/encouragement' do
    "Your shoes are super cool!"
    "Your hair looks nice!"
  end
  
  get '/insult' do
    "Your feet are dumb"
  end
  
  get '/math' do
    @intro = "10 *490 is:"
    @answer = 10 * 490
    @answer.to_s
  end
  
  post "/twistedsentence" do
    @username = params["name"]
    @userage = params["age"]
    @fortune = "#{@username}, #{fortune(@userage)}"
    erb :fortune
  end
  
end
