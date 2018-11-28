require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/place.rb')
# require('./public/styles.css')


get('/') do
  erb(:home)
end
