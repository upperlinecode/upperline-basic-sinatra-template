require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    return erb :index
  end
  
  post '/whofor' do
    answers = params.values 
    @total = 0 
    answers.each do |answer|
      @total += answer.to_i 
    end
    puts @total
    
    @combo = healtheffects(@total)
    if @combo == "onyou"
      erb :onyou
    elsif @combo == "onsome"
      erb :onsome
    end
  end 
    
  post '/yourresults' do
    answers = params.values 
    @total = 0 
    answers.each do |answer|
      @total += answer.to_i 
    end
    puts @total
    
    @combo = onyou(@total)
    if @combo == "YHealthy_Results"
      erb :YHealthy_Results
    elsif @combo == "YHeat_Exhaustion"
      erb :YHeat_Exhaustion
    elsif @combo == "YHeat_Stroke"
      erb :YHeat_Stroke
    end
  
end
end
