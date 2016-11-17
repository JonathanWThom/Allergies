require('sinatra')
require('sinatra/reloader')
require('./lib/allergies')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/allergy_list') do
  @allergies = params.fetch('score').to_i.allergies()
  erb(:allergy_list)
end
