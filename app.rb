require './lib/user'
require 'sinatra'

class Stickers < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/user' do
    @user = User.create(params[:name])
    redirect '/gift'
  end

  get '/gift' do
    @user = User.instance
    @user_sticker = @user.sticker.nil?
    @user_name = @user.name
    erb :gift
  end

  post '/gift' do
    @user = User.instance
    @user_sticker = @user.give_sticker
    redirect '/gift'
  end
  
  run! if app_file == $0
end