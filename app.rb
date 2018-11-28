require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/place.rb')
# require('./public/styles.css')


get('/') do
  erb(:home)
end

post('/book') do
  @place_name = params.fetch("user_input_name")
  @place_loaction = params.fetch("user_input_location")

  user_places = Place.new(@place_name, @place_loaction)

  user_places.add_info
  @names = user_places.get_name_list
  erb(:book)
end
