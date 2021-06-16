require 'sinatra'
require 'sinatra/reloader' if development?

get '/hello' do
  'Hello!'
end

get '/secret' do
  'shhhh'
end

get '/cat' do
  @name = %w(Monty Harry Alfie).sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end

get '/cat-form' do
  erb :cat_form
end