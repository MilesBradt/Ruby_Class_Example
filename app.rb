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
  erb(:book)
end
