require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/heatquiz' do
    return erb :heatquiz
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
  
  post '/theirresults' do
    answers = params.values 
    @total = 0 
    answers.each do |answer|
      @total += answer.to_i 
    end
    puts @total
    
    @combo = onsome(@total)
    if @combo == "SHealthy_Results"
      erb :SHealthy_Results
    elsif @combo == "SHeat_Exhaustion"
      erb :SHeat_Exhaustion
    elsif @combo == "SHeat_Stroke"
      erb :SHeat_Stroke
    end
  end
  
  get '/' do
    return erb :index
  end
  
  post '/results' do
    answers = params.values 
    @total = 0 
    answers.each do |answer|
      @total += answer.to_i 
    end
    puts @total 
    
    @combo = health_generator(@total)
    if @combo == "op1"
       erb :OP1
    elsif @combo == "op2"
       erb :OP2
    elsif @combo == "op3"
       erb :OP3
    elsif @combo == "op4"
       erb :OP4
    elsif @combo == "op5"
       erb :OP5
     elsif @combo == "op6"
       erb :OP6
       
    end 
  end
end 
  
end