require('pry')
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/place.rb')


get('/') do
  erb(:home)
end

post('/') do
  place_name = params.fetch("user_input_name")
  place_location = params.fetch("user_input_location")
  place_name = Place.new(place_name, place_location)
  place_name.add_info
  @names = Place.get_name_list
  # binding.pry
  erb(:home)
end

get('/book') do
  @names = Place.get_name_list
  erb(:book)
end
