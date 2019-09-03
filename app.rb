require 'sinatra'
require 'shotgun'

configure do
  set :session_secret, "My session secret"
end

get '/' do
  "Hello World!"
end

get '/secret' do
  "SHHHH!"
end

get '/bananas' do
  "Here come the monkeys!"
end

get '/peanuts' do
  "Elephants..."
end

get '/random-cat' do
  @random_names = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @random_names = params[:name]
  erb(:index)
end
