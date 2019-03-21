require('pry')
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/example.rb')


get('/') do
  erb(:home)
end

post('/') do
  example_name = params.fetch("user_input_name")
  example_description = params.fetch("user_input_description")
  example_name = Example.new(example_name, example_description)
  example_name.add_info

  @examples = Example.get_name_list
  # binding.pry
  erb(:home)
end

get('/examples') do
  mario64 = Example.new('Super Mario 64', 'Mario run and he jump!')
  mario64.add_info

  baba = Example.new('BaBa is You', 'Flag is win? You write the rules')
  baba.add_info
  @examples = Example.get_name_list
  erb(:examples)
end

post('/examples') do
  @examples = Example.sort_alphabetical
  erb(:examples)
end
