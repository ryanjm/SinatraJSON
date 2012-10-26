require 'sinatra'
load 'read_people.rb'

get '/people', :provides => [:html] do
  @people = names
  erb :index 
end

get '/people', :provides => [:json] do

end

get '/people/:name', :provides => [:html] do
  @person = find(params[:name])
  erb :person
end

get '/people/:name', :provides => [:json] do

end
