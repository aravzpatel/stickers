require 'sinatra'

class Stickers < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/gift' do
    erb :gift
  end
  
  run! if app_file == $0
end