require 'sinatra'
load 'read_people.rb'

get '/' do
  @people = names
  erb :index 
end

get '/person/:name' do
  puts params
  @person = find(params[:name])
  erb :person
end
